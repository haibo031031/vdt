//--by Jianbin Fang

#define __CL_ENABLE_EXCEPTIONS

#include <iostream>
#include <string>
#include <cstring>
#include <omp.h>

#include "CLHelper.h"
#include "util.h"

//----------------------------------------------------------
//--transpose on cpu
//--programmer:	jianbin
//--date:	26/01/2011
//--note: width is changed to the new_width
//----------------------------------------------------------
template<typename datatype>
void run_transpose_cpu(datatype *h_imatrix, datatype *h_omatrix_ref, int width, int height){
	int number_elements = height * width;
	int new_width = height;
#pragma omp parallel for num_threads(8)
	for(int i=0; i<number_elements; i++){
		int oidx = (i%width)*new_width + i/width;
		h_omatrix_ref[oidx] = h_imatrix[i];
	}
}

//----------------------------------------------------------
//--matrix multiplication on cpu
//--programmer:	jianbin
//--date:	17/05/2011
//--note: 
//----------------------------------------------------------
#define h_omatrix_c(i,j,w) h_omatrix_c[i*w+j]
#define h_imatrix_a(i,j,w) h_imatrix_a[i*w+j]
#define h_imatrix_b(i,j,w) h_imatrix_b[i*w+j]


template<typename datatype>
void run_cpu(datatype *h_imatrix_a, int w_a, int h_a, datatype *h_imatrix_b, int w_b, int h_b, datatype *h_omatrix_c, int w_c, int h_c){

	#pragma omp parallel for num_threads(8)
	for(int i=0; i<w_c; i++)
		for(int j=0; j<h_c; j++)
			for(int k=0; k<w_a; k++){
				h_omatrix_c(i, j, w_c) += h_imatrix_a(i, k, w_a) * h_imatrix_b(k, j, w_b);
			}
}
//----------------------------------------------------------
//--matrix multiplication on gpu
//--programmer:	jianbin
//--date:	17/05/2011
//----------------------------------------------------------
#define vector_length 4
template<typename datatype>
double run_gpu(datatype *h_imatrix_a, datatype *h_imatrix_b, datatype *h_omatrix_c, \
		datatype * h_omatrix_ref, int size, int kernel_id, bool verify) 
					throw(std::string){	

	int number_elements = size * size;
	cl_mem d_imatrix_a, d_imatrix_b, d_omatrix_c;
	
	try{
		//--1 transfer data from host to device
		d_imatrix_a = _clMalloc(number_elements*sizeof(datatype));
		d_imatrix_b = _clMalloc(number_elements*sizeof(datatype));
		d_omatrix_c = _clMalloc(number_elements*sizeof(datatype));
		_clMemcpyH2D(d_imatrix_a, h_imatrix_a, number_elements*sizeof(datatype));
		_clMemcpyH2D(d_imatrix_b, h_imatrix_b, number_elements*sizeof(datatype));		
	
		//--2 invoke kernel
		int iterations = 1;
		int kernel_idx = 0;
		_clSetArgs(kernel_id, kernel_idx++, d_imatrix_a);
		_clSetArgs(kernel_id, kernel_idx++, d_imatrix_b);
		_clSetArgs(kernel_id, kernel_idx++, d_omatrix_c);
		_clSetArgs(kernel_id, kernel_idx++, &size, sizeof(int));
		_clSetArgs(kernel_id, kernel_idx++, &size, sizeof(int));
		int work_group_unit = 16;
		int range_x, range_y;
		range_x = size, range_y = size;
		int group_x = work_group_unit * 4, group_y = 1;
		unsigned long deltaT = 0;
		unsigned long totalT = 0;
		for(int i=-1; i<iterations; i++){
			_clInvokeKernel2D(kernel_id, range_x, range_y, group_x, group_y, &deltaT);
			if(i==0)
			totalT += deltaT;
		}
		//totalT = totalT/iterations;
		//--3 transfer data from device to host
		_clMemcpyD2H(h_omatrix_c,d_omatrix_c, number_elements*sizeof(datatype));
		if(verify){
			verify_array<datatype>(h_omatrix_ref, h_omatrix_c, number_elements);			
		}
		//--statistics
		//--4 release cl resources.
		_clFree(d_imatrix_a);
		_clFree(d_imatrix_b);
		_clFree(d_omatrix_c);
		return totalT*(1e-9);
	}
	catch(std::string msg){		
		std::string e_str = "in run_gpu -> ";
		e_str += msg;
		throw(e_str);
	}
	return 0.0;
}
//----------------------------------------------------------
//--cambine:	main function
//--author:		created by Jianbin Fang
//--date:		25/01/2011
//----------------------------------------------------------
typedef float datatype;

int main(int argc, char * argv[])
{
	float *h_imatrix_a, *h_imatrix_b, *h_omatrix_c, *h_omatrix_ref;
	int a_size, b_size, c_size;
	int size = 2048;
	_clParseCommandLine(argc, argv);
	bool verify = false;
	a_size = size;
	b_size = size;
	c_size = size;
	int number_elements_a = a_size * a_size;
	int number_elements_b = b_size * b_size;
	int number_elements_c = c_size * c_size;	
	
	try{
			_clInit(platform_id, device_type, device_id);
		h_imatrix_a = (datatype *)malloc(number_elements_a*sizeof(datatype));
		h_imatrix_b = (datatype *)malloc(number_elements_b*sizeof(datatype));
		h_omatrix_c = (datatype *)malloc(number_elements_c*sizeof(datatype)); 
		if(verify){
			h_omatrix_ref = (datatype *)malloc(number_elements_c*sizeof(datatype)); 
		}
		fill<datatype>(h_imatrix_a, number_elements_a, 10);
		fill<datatype>(h_imatrix_b, number_elements_b, 10);
		if(verify){
			run_cpu<datatype>(h_imatrix_a, a_size, a_size, h_imatrix_b, b_size, b_size, h_omatrix_ref, c_size, c_size);		
		}

		std::cout<<"--------------------testing..."<<std::endl;
		int number_trials = 20;
		double *trials = (double*)malloc(sizeof(double)*number_trials);
		double avg_t = 0.0;
		double std_t = 0.0;		
		
		for(int k=0; k<total_kernels; k++){	
			//std::cout<<"---kernel::"<<kernel_names[k]<<std::endl;
			FILE *fp = fopen("results.dat", "a");
			avg_t = 0.0;
			std_t = 0.0;
			for(int i=0; i<number_trials; i++){
				trials[i] = run_gpu<datatype>(h_imatrix_a, h_imatrix_b, h_omatrix_c, h_omatrix_ref, size, k, verify);
				avg_t += trials[i];
			}
			avg_t = avg_t/(double)number_trials;
			for(int i=0; i<number_trials; i++){
				std_t += (avg_t-trials[i])*(avg_t-trials[i]);
			}
			std_t /= (double)number_trials;
			std_t = sqrt(std_t);
			fprintf(fp, "%d\t%lf\t%lf\t", k, avg_t, std_t);
			for(int i=0; i<number_trials; i++){
				fprintf(fp, "%lf\t", trials[i]);
			}
			fprintf(fp, "\n");
			fclose(fp);
		}
	
		std::cout<<"--------------------done..."<<std::endl;
		_clRelease();
		free(h_imatrix_a);
		free(h_imatrix_b);
		free(h_omatrix_c);
		if(verify){
			free(h_omatrix_ref);		
		}
		free(trials);
	}
	catch(std::string msg){
		std::cout<<"--cambine: exception in main ->"<<msg<<std::endl;
	}
		
    return 0;
}
