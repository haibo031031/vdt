//--by Jianbin Fang

#define __CL_ENABLE_EXCEPTIONS

#include <iostream>
#include <string>
#include <cstring>
#include <omp.h>
#include "util.h"

#include "CLHelper.h"
template<typename datatype>
void run_cpu(datatype *input, datatype *output, int w, int h){
#pragma omp parallel for
	for(int i=0; i<h; i++)
		for(int j=0; j<w; j++){
			int idx = i * w +j;
			datatype val = 0;
			val = input[idx];
			val += 3.0f;
			output[idx] = val;
		}
			
	return ;
}

#define VF 4
template<typename datatype>
double run_gpu(datatype *h_i_vector, datatype *h_o_vector, datatype *h_o_vector_ref,\
			int w, int h, int kernel_id, bool verify)throw(std::string){	
	cl_mem d_i_vector, d_o_vector;
	int number_elements_out = w * h;
	int number_elements_in = w * h;
	try{
		//--1 transfer data from host to device		
		d_i_vector = _clMalloc(number_elements_in * sizeof(datatype));
		d_o_vector = _clMalloc(number_elements_out * sizeof(datatype));
		_clMemcpyH2D(d_i_vector, h_i_vector, number_elements_in*sizeof(datatype));
		_clFinish();
		//--2 invoke kernel
		int args_idx = 0;
		_clSetArgs(kernel_id, args_idx++, d_i_vector);
		_clSetArgs(kernel_id, args_idx++, d_o_vector);
		_clSetArgs(kernel_id, args_idx++, &w, sizeof(int));

		int work_group_unit = 16;
		int range_x = -1; 
		int range_y = -1;
		switch(kernel_id){
			case 0:
				range_x = w, range_y = h;
				break;
			case 1:
				range_x = w/2, range_y = h;
				break;
			case 2:
				range_x = w/4, range_y = h;
				break;				
			case 3:
				range_x = w/8, range_y = h;
				break;								
			case 4:
				range_x = w/16, range_y = h;
				break;								
			default:
				throw(string("Unknown kernel id!!!"));
				break;	
		}
		int group_x = work_group_unit * 4;
		int group_y = 1;
		int number_iterations = 1;
		unsigned long deltaT = 0.0f;
		unsigned long kernel_exe_time = 0.0f;
		std::cout<<"--testing..."<<std::endl;		
		for(int i=0; i<number_iterations; i++){
			_clInvokeKernel2D(kernel_id, range_x, range_y, group_x, group_y, &kernel_exe_time);			
			deltaT += kernel_exe_time;
		}		
		deltaT = deltaT/number_iterations;
		std::cout<<"--done."<<std::endl;
		_clMemcpyD2H(h_o_vector, d_o_vector, number_elements_out*sizeof(datatype));
	
		if(verify){
			verify_array<datatype>(h_o_vector, h_o_vector_ref, number_elements_out);
		}
		//--4 release cl resources.
		_clFree(d_i_vector);
		_clFree(d_o_vector);

		return (double)(((double)w*(double)h)*sizeof(datatype)*2)/(double)deltaT;		
	}
	catch(std::string msg){		
		std::string e_str = "in run_gpu -> ";
		e_str += msg;
		throw(e_str);
	}
	return 0.0;
}

typedef float datatype;
#define NUM_TEST 4

int main(int argc, char * argv[]){
	
	_clParseCommandLine(argc, argv);
	int w = 8192;
	int h = 8192;	
	bool verify = false;
	
	try{
		_clInit(platform_id, device_type, device_id);   						
		int number_trials = 20;
		double *trials = (double*)malloc(sizeof(double)*number_trials);
		double avg_time = 0.0;
		double std_time = 0.0;		
		FILE *fp = fopen("results.dat", "a");
		if(fp==NULL){
			throw(string("failed to open the output file!!!"));
		}
		datatype *h_i_vector;
		datatype *h_o_vector;
    		datatype *h_o_vector_ref;
        
		int number_elements_out = w * h;
		int number_elements_in = w * h;
		h_i_vector = (datatype *)malloc(number_elements_in * sizeof(datatype));
		h_o_vector = (datatype *)malloc(number_elements_out * sizeof(datatype));
		fill<datatype>(h_i_vector, number_elements_in, 10);
		if(verify){
			h_o_vector_ref = (datatype *)malloc(number_elements_out * sizeof(datatype));
			run_cpu<datatype>(h_i_vector, h_o_vector_ref, w, h);
		}
		for(int k=0; k<total_kernels; k++){
			avg_time = 0.0;
			std_time = 0.0;
			for(int r=0; r<number_trials; r++){
				trials[r] = run_gpu<datatype>(h_i_vector, h_o_vector, h_o_vector_ref, w, h, k, verify);
				avg_time += trials[r];
			}			
			avg_time = avg_time/(double)number_trials;
			for(int i=0; i<number_trials; i++){
				std_time += (avg_time-trials[i])*(avg_time-trials[i]);
			}
			std_time /= (double)number_trials;
			std_time = sqrt(std_time);
			fprintf(fp, "%d\t%lf\t%lf\t", k, avg_time, std_time);
			for(int i=0; i<number_trials; i++){
				fprintf(fp, "%lf\t", trials[i]);
			}
			fprintf(fp, "\n");
		}
		_clRelease();
		free(h_i_vector);
		free(h_o_vector);
		if(verify){
			free(h_o_vector_ref);
		}	
		fclose(fp);	 	
	}
	catch(std::string msg){
		std::cout<<"Exception in main :: "<<msg<<std::endl;
	}
		
	return 0;
}

