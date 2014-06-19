//--by Jianbin Fang

#define __CL_ENABLE_EXCEPTIONS

#include <iostream>
#include <string>
#include <cstring>
#include <omp.h>

#include "CLHelper.h"
#include "util.h"
#include <math.h>
#include <malloc.h>

//----------------------------------------------------------
//--SOR on cpu
//--programmer:	jianbin
//--date:	03/08/2011
//--note: 
//----------------------------------------------------------
 #define out_matrix(row, col, w) out_matrix[row*w+col]
 #define in_matrix(row, col, w) in_matrix[row*w+col]
template<typename datatype>
void run_cpu(datatype *in_matrix, int w_in, int h_in, datatype *out_matrix, int w, int h, int b){

	int side = w + 2*b;
    #pragma omp parallel for num_threads(8)    
    for(int idy = 0; idy < h; idy++)
    	for(int idx = 0; idx < w; idx++){
		  unsigned int col = idx + 1;
		  unsigned int row = idy + 1;		  
		  float in_e = in_matrix((row + 0), (col + 1), side);
		  float in_w = in_matrix((row + 0), (col - 1), side);
		  float in_n = in_matrix((row - 1), (col + 0), side);
		  float in_s = in_matrix((row + 1), (col + 0), side);		
		  out_matrix(idy, idx, w) =  (in_e + in_w + in_n + in_s)/4;
    	}
}
//----------------------------------------------------------
//--image convolution on gpu
//--programmer:	jianbin
//--date:	01/08/2011
//----------------------------------------------------------
template<typename datatype>
double run_gpu(datatype *h_in_matrix, int w_in, int h_in, datatype *h_out_matrix, \
	datatype *h_out_matrix_ref, int w_out, int h_out, int b, int kernel_id, bool verify) \
	throw(std::string){	

	int number_elements_in = w_in * h_in;
	int number_elements_out = w_out * h_out;
	int w = w_in - 2*b;
	int h = h_in - 2*b;
	cl_mem d_in_matrix, d_out_matrix;
	
	try{
		//--1 transfer data from host to device				
		d_in_matrix = _clMalloc(number_elements_in*sizeof(datatype));
		d_out_matrix = _clMalloc(number_elements_out*sizeof(datatype));
		_clMemcpyH2D(d_in_matrix, h_in_matrix, number_elements_in*sizeof(datatype));
	
		//--2 invoke kernel
		int iterations = 1;
		int kernel_idx = 0;
		_clSetArgs(kernel_id, kernel_idx++, d_in_matrix);
		_clSetArgs(kernel_id, kernel_idx++, d_out_matrix);
		_clSetArgs(kernel_id, kernel_idx++, &w, sizeof(unsigned int));
		_clSetArgs(kernel_id, kernel_idx++, &b, sizeof(unsigned int));
		
		int work_group_unit = 64;
		int range_x, range_y;
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
			throw("->unknown kernle id->");
			break;
		}		
		int group_x = work_group_unit, group_y = 1;
		unsigned long deltaT = 0;
		unsigned long totalT = 0;
		for(int i=-1; i<iterations; i++){
			_clInvokeKernel2D(kernel_id, range_x, range_y, group_x, group_y, &deltaT);
			if(i==0)
			  totalT += deltaT;
		}
		//totalT = totalT/iterations;
		//--3 transfer data from device to host
		_clMemcpyD2H(h_out_matrix,d_out_matrix, number_elements_out*sizeof(datatype));
		if(verify){
			verify_array<datatype>(h_out_matrix_ref, h_out_matrix, w_out, h_out, 0);
		}		
		//--4 release cl resources.
		_clFree(d_in_matrix);
		_clFree(d_out_matrix);
		return totalT*(1e-9);
	}
	catch(std::string msg){		
		std::string e_str = "run_gpu :: ";
		e_str += msg;
		throw(e_str);
	}
	return 0.0;
}
//----------------------------------------------------------
//--cambine:	main function
//--author:		created by Jianbin Fang
//--date:		03/08/2011
//----------------------------------------------------------
typedef float datatype;

int main(int argc, char * argv[])
{
	float *h_in_matrix, *h_out_matrix, *h_out_matrix_ref;
	int side = 8192; //atoi(argv[1]);
	_clParseCommandLine(argc, argv);
	bool verify = false;
	int w_in, h_in, w_out, h_out, w, h;
	int b = 1;
	w_in = h_in = side+2*b;
	w_out = h_out = side;
	w = h = side;
	
	
	int number_elements_in = w_in * h_in;
	int number_elements_out = w_out * h_out;
	
	try{
		_clInit(platform_id, device_type, device_id);		
		h_in_matrix = (datatype *)malloc(number_elements_in*sizeof(datatype));
		h_out_matrix = (datatype *)malloc(number_elements_out*sizeof(datatype)); 
		fill<datatype>(h_in_matrix, number_elements_in, 10);
		if(verify){
			h_out_matrix_ref = (datatype *)malloc(number_elements_out*sizeof(datatype));
			run_cpu<datatype>(h_in_matrix, w_in, h_in, h_out_matrix_ref, w, h, b);					
		}
	
		std::cout<<"--------------------testing..."<<std::endl;
		int number_trials = 20;
		double *trials = (double*)malloc(sizeof(double)*number_trials);
		double avg_time = 0.0;
		double std_time = 0.0;		
		FILE *fp = fopen("results.dat", "a");
		if(fp==NULL){
			throw(string("failed to open file!!!"));
		}
		for(int k=0; k<total_kernels; k++){	
			//std::cout<<"---kernel::"<<kernel_names[k]<<std::endl;			
			avg_time = 0.0;
			std_time = 0.0;
			for(int i=0; i<number_trials; i++){
				trials[i] = run_gpu<datatype>(h_in_matrix, w_in, h_in, h_out_matrix, \
				h_out_matrix_ref, w_out, h_out, b, k, verify);
				avg_time += trials[i];
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
		fclose(fp);
	
		std::cout<<"--------------------done..."<<std::endl;
		_clRelease();
		free(h_in_matrix);
		free(h_out_matrix);
		if(verify){
			free(h_out_matrix_ref);				
		}
		free(trials);
	}
	catch(std::string msg){
		std::cout<<"--cambine: exception in main ->"<<msg<<std::endl;
	}
		
    return 0;
}
