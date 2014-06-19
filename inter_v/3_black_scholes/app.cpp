//--by Jianbin Fang

#define __CL_ENABLE_EXCEPTIONS

#include <iostream>
#include <string>
#include <cstring>
#include <omp.h>

#include "CLHelper.h"
#include "util.h"
#include <math.h>


/**
 *  Constants 
 */

#define S_LOWER_LIMIT 10.0f
#define S_UPPER_LIMIT 100.0f
#define K_LOWER_LIMIT 10.0f
#define K_UPPER_LIMIT 100.0f
#define T_LOWER_LIMIT 1.0f
#define T_UPPER_LIMIT 10.0f
#define R_LOWER_LIMIT 0.01f
#define R_UPPER_LIMIT 0.05f
#define SIGMA_LOWER_LIMIT 0.01f
#define SIGMA_UPPER_LIMIT 0.10f

//----------------------------------------------------------
//--image convolution on cpu
//--programmer:	jianbin
//--date:	01/08/2011
//--note: 
//----------------------------------------------------------
float phi(float X){
    float y, absX, t;

    // the coeffs
    const float c1 =  0.319381530f;
    const float c2 = -0.356563782f;
    const float c3 =  1.781477937f;
    const float c4 = -1.821255978f;
    const float c5 =  1.330274429f;

    const float oneBySqrt2pi = 0.398942280f;

    absX = fabs(X);
    t = 1.0f / (1.0f + 0.2316419f * absX);

    y = 1.0f - oneBySqrt2pi * exp(-X * X / 2.0f) *
        t * (c1 +
                t * (c2 +
                    t * (c3 +
                        t * (c4 + t * c5))));

    return (X < 0) ? (1.0f - y) : y;
}
template<typename datatype>
void run_cpu(datatype *h_rand_matrix, int w_rand, int h_rand, datatype *h_call_matrix, int w_call, int h_call, datatype *h_put_matrix, int w_put, int h_put){

    #pragma omp parallel for num_threads(8)    
    for (int y = 0; y < w_rand*h_rand; ++y){
        float d1, d2;
        float sigmaSqrtT;
        float KexpMinusRT;
        float s = S_LOWER_LIMIT * h_rand_matrix[y] + S_UPPER_LIMIT * (1.0f - h_rand_matrix[y]);
        float k = K_LOWER_LIMIT * h_rand_matrix[y] + K_UPPER_LIMIT * (1.0f - h_rand_matrix[y]);
        float t = T_LOWER_LIMIT * h_rand_matrix[y] + T_UPPER_LIMIT * (1.0f - h_rand_matrix[y]);
        float r = R_LOWER_LIMIT * h_rand_matrix[y] + R_UPPER_LIMIT * (1.0f - h_rand_matrix[y]);
        float sigma = SIGMA_LOWER_LIMIT * h_rand_matrix[y] + SIGMA_UPPER_LIMIT * (1.0f - h_rand_matrix[y]);

        sigmaSqrtT = sigma * sqrt(t);

        d1 = (log(s / k) + (r + sigma * sigma / 2.0f) * t) / sigmaSqrtT;
        d2 = d1 - sigmaSqrtT;

        KexpMinusRT = k * exp(-r * t);
        h_call_matrix[y] = s * phi(d1) - KexpMinusRT * phi(d2);
        h_put_matrix[y]  = KexpMinusRT * phi(-d2) - s * phi(-d1);
    }
}
//----------------------------------------------------------
//--image convolution on gpu
//--programmer:	jianbin
//--date:	01/08/2011
//----------------------------------------------------------
template<typename datatype>
double run_gpu(datatype *h_rand_matrix, int w_rand, int h_rand, datatype *h_call_matrix, int w_call, int h_call, \
				datatype *h_put_matrix, int w_put, int h_put, int kernel_id, bool verify, \
				datatype *h_call_matrix_ref, datatype *h_put_matrix_ref) throw(std::string){	

	int number_elements_rand = w_rand * h_rand;
	int number_elements_call = w_call * h_call;
	int number_elements_put = w_put * h_put;	
	cl_mem d_rand_matrix, d_call_matrix, d_put_matrix;
	
	try{
		//--1 transfer data from host to device				
		d_rand_matrix = _clMalloc(number_elements_rand*sizeof(datatype));
		d_call_matrix = _clMalloc(number_elements_call*sizeof(datatype));
		d_put_matrix = _clMalloc(number_elements_put*sizeof(datatype));				
		_clMemcpyH2D(d_rand_matrix, h_rand_matrix, number_elements_rand*sizeof(datatype));
	
		//--2 invoke kernel
		int iterations = 1;
		int kernel_idx = 0;
		_clSetArgs(kernel_id, kernel_idx++, d_rand_matrix);
		_clSetArgs(kernel_id, kernel_idx++, &w_rand, sizeof(int));
		_clSetArgs(kernel_id, kernel_idx++, d_call_matrix);
		_clSetArgs(kernel_id, kernel_idx++, d_put_matrix);
		
		int work_group_unit = 64;
		int range_x, range_y;
		switch(kernel_id){
			case 0:
			range_x = w_rand, range_y = h_rand;				
			break;
			case 1:
			range_x = w_rand/2, range_y = h_rand;
			break;
			case 2:
			range_x = w_rand/4, range_y = h_rand;
			break;
			case 3:
			range_x = w_rand/8, range_y = h_rand;
			break;
			case 4:
			range_x = w_rand/16, range_y = h_rand;
			break;
			default:
			throw("unknown kernle id::");
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
		_clMemcpyD2H(h_call_matrix,d_call_matrix, number_elements_call*sizeof(datatype));
		_clMemcpyD2H(h_put_matrix,d_put_matrix, number_elements_put*sizeof(datatype));
		//--statistics
		//std::cout<<"--cambine: kernel time(s): "<<((double)totalT)<<std::endl;
		//--4 release cl resources.
		if(verify){
			verify_array<datatype>(h_call_matrix_ref, h_call_matrix, number_elements_call);
			verify_array<datatype>(h_put_matrix_ref, h_put_matrix, number_elements_put);								
		}
		_clFree(d_rand_matrix);
		_clFree(d_call_matrix);
		_clFree(d_put_matrix);
		return (double)totalT*1e-9;
	}
	catch(std::string msg){		
		std::string e_str = "run_gpu::";
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
	float *h_rand_matrix, *h_call_matrix, *h_put_matrix, *h_call_matrix_ref, *h_put_matrix_ref;
	int in_side = 8192;
	_clParseCommandLine(argc, argv);
	bool verify = false;
	int w_rand, h_rand, w_call, h_call, w_put, h_put;
	w_rand = h_rand = in_side;
	w_call = h_call = in_side;
	w_put = h_put = in_side;
	
	int number_elements_rand = w_rand * h_rand;
	int number_elements_call = w_call * h_call;
	int number_elements_put = w_put * h_put;

	
	try{
	_clInit(platform_id, device_type, device_id);		
		h_rand_matrix = (datatype *)malloc(number_elements_rand*sizeof(datatype));
		h_call_matrix = (datatype *)malloc(number_elements_call*sizeof(datatype));		
		memset(h_call_matrix, 0, number_elements_call*sizeof(datatype));
		h_put_matrix = (datatype *)malloc(number_elements_put*sizeof(datatype)); 
		memset(h_put_matrix, 0, number_elements_put*sizeof(datatype));
		fill<datatype>(h_rand_matrix, number_elements_rand, 10);
		if(verify){
			h_call_matrix_ref = (datatype *)malloc(number_elements_call*sizeof(datatype));
			memset(h_call_matrix_ref, 0, number_elements_call*sizeof(datatype));
			h_put_matrix_ref = (datatype *)malloc(number_elements_put*sizeof(datatype));
			memset(h_put_matrix_ref, 0, number_elements_put*sizeof(datatype));
			run_cpu<datatype>(h_rand_matrix, w_rand, h_rand, h_call_matrix_ref, w_call, h_put, h_put_matrix_ref, w_put, h_put);		
		}

		std::cout<<"--------------------testing..."<<std::endl;
		int number_trials = 20;
		double *trials = (double*)malloc(sizeof(double)*number_trials);
		double avg_time = 0.0;
		double std_time = 0.0;		
		FILE *fp = fopen("results.dat", "a");
		if(fp==NULL){
			throw(string("failed to open the output file!!!"));
		}
		
		for(int k=0; k<total_kernels; k++){	
			//std::cout<<"---kernel::"<<kernel_names[k]<<std::endl;			
			avg_time = 0.0;
			std_time = 0.0;
			for(int i=0; i<number_trials; i++){
				trials[i] = run_gpu<datatype>(h_rand_matrix, w_rand, h_rand, h_call_matrix, \
				w_call, h_call, h_put_matrix, w_put, h_put, k, verify, h_call_matrix_ref, h_put_matrix_ref);
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
		free(h_rand_matrix);
		free(h_call_matrix);
		free(h_put_matrix);
		if(verify){
			free(h_call_matrix_ref);
			free(h_put_matrix_ref);				
		}
		free(trials);
	}
	catch(std::string msg){
		std::cout<<"Exception in main::"<<msg<<std::endl;
	}
		
    return 0;
}
