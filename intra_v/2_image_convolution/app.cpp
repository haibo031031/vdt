//--by Jianbin Fang

#define __CL_ENABLE_EXCEPTIONS

#include <iostream>
#include <string>
#include <cstring>
#include <omp.h>

#include "CLHelper.h"
#include "util.h"

//----------------------------------------------------------
//--image convolution on cpu
//--programmer:	jianbin
//--date:	01/08/2011
//--note: 
//----------------------------------------------------------
#define h_omatrix_c(i,j,w) h_omatrix_c[i*w+j]
#define h_imatrix_a(i,j,w) h_imatrix_a[i*w+j]
#define h_imatrix_b(i,j,w) h_imatrix_b[i*w+j]


template<typename datatype>
void run_cpu(datatype *h_in_matrix, int w_in, int h_in, datatype *h_filter_matrix, int w_filter, int h_filter, datatype *h_out_matrix, int w_out, int h_out){

    #pragma omp parallel for num_threads(8)
    for (int yOut = 0; yOut < h_out; yOut++)
    {
        const int yInTopLeft = yOut;

        for (int xOut = 0; xOut < w_out; xOut++)
        {
            const int xInTopLeft = xOut;

            float sum = 0;
            for (int r = 0; r < w_filter; r++)
            {
                const int idxFtmp = r * w_filter;

                const int yIn = yInTopLeft + r;
                const int idxIntmp = yIn * w_in + xInTopLeft;

                for (int c = 0; c < w_filter; c++)
                {
                    const int idxF  = idxFtmp  + c;
                    const int idxIn = idxIntmp + c;    
                    sum += h_filter_matrix[idxF]*h_in_matrix[idxIn];
                }
            } //for (int r = 0...

            const int idxOut = yOut * w_out + xOut;
            h_out_matrix[idxOut] = sum;

        } //for (int xOut = 0...
    } //for (int yOut = 0...
}
//----------------------------------------------------------
//--image convolution on gpu
//--programmer:	jianbin
//--date:	01/08/2011
//----------------------------------------------------------
template<typename datatype>
double run_gpu(datatype *h_in_matrix, int w_in, int h_in, datatype *h_filter_matrix, int w_filter, int h_filter, \
				datatype *h_out_matrix, datatype *h_out_matrix_ref, int w_out, int h_out, \
				int kernel_id, bool verify) throw(std::string){	

	int number_elements_in = w_in * h_in;
	int number_elements_filter = w_filter * h_filter;
	int number_elements_out = w_out * h_out;	
	cl_mem d_in_matrix, d_filter_matrix, d_out_matrix;
	
	try{
		//--1 transfer data from host to device				
		d_in_matrix = _clMalloc(number_elements_in*sizeof(datatype));
		d_filter_matrix = _clMalloc(number_elements_filter*sizeof(datatype));
		d_out_matrix = _clMalloc(number_elements_out*sizeof(datatype));				
		_clMemcpyH2D(d_in_matrix, h_in_matrix, number_elements_in*sizeof(datatype));
		_clMemcpyH2D(d_filter_matrix, h_filter_matrix, number_elements_filter*sizeof(datatype));		
	
		//--2 invoke kernel
		int iterations = 1;
		int kernel_idx = 0;
		_clSetArgs(kernel_id, kernel_idx++, d_in_matrix);
		_clSetArgs(kernel_id, kernel_idx++, d_filter_matrix);
		_clSetArgs(kernel_id, kernel_idx++, d_out_matrix);
		_clSetArgs(kernel_id, kernel_idx++, &w_in, sizeof(int));
		_clSetArgs(kernel_id, kernel_idx++, &w_filter, sizeof(int));
		int work_group_unit = 64;
		int range_x, range_y;
		range_x = w_out, range_y = h_out;				
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
			verify_array<datatype>(h_out_matrix_ref, h_out_matrix, number_elements_out);			
		}
		//--4 release cl resources.
		_clFree(d_in_matrix);
		_clFree(d_filter_matrix);
		_clFree(d_out_matrix);
		return totalT*(1e-9);
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
	float *h_in_matrix, *h_out_matrix, *h_filter_matrix, *h_out_matrix_ref;
	int in_side = 8192;
	int filter_side = 16;		
	_clParseCommandLine(argc, argv);
	_clInit(platform_id, device_type, device_id);		
	bool verify = false;
	int w_in, h_in, w_out, h_out, w_filter, h_filter;
	w_out = h_out = in_side;
	w_filter = h_filter = filter_side;
	w_in = h_in = in_side + filter_side * 2;
	
	int number_elements_in = w_in * h_in;
	int number_elements_out = w_out * h_out;
	int number_elements_filter = w_filter * h_filter;

	
	try{
		h_in_matrix = (datatype *)malloc(number_elements_in*sizeof(datatype));
		h_out_matrix = (datatype *)malloc(number_elements_out*sizeof(datatype));		
		h_filter_matrix = (datatype *)malloc(number_elements_filter*sizeof(datatype)); 
		fill<datatype>(h_in_matrix, number_elements_in, 10);
		fill<datatype>(h_filter_matrix, number_elements_filter, 10);
		if(verify){
			h_out_matrix_ref = (datatype *)malloc(number_elements_out*sizeof(datatype));
			run_cpu<datatype>(h_in_matrix, w_in, h_in, h_filter_matrix, w_filter, h_filter, h_out_matrix_ref, w_out, h_out);		
		}		

		int number_trials = 20;
		double *trials = (double*)malloc(sizeof(double)*number_trials);
		double avg_t = 0.0;
		double std_t = 0.0;		
		
		FILE *fp = fopen("results.dat", "a");
		if(fp==NULL){
			throw(string("failed to open file!!!"));
		}
		
		printf("the total number of kernels: %d\n", total_kernels);
		for(int k=0; k<total_kernels; k++){	
			//std::cout<<"---kernel::"<<kernel_names[k]<<std::endl;
			avg_t = 0.0;
			std_t = 0.0;
			for(int i=0; i<number_trials; i++){
				trials[i] = run_gpu<datatype>(h_in_matrix, w_in, h_in, h_filter_matrix, w_filter, \
			h_filter, h_out_matrix, h_out_matrix_ref, w_out, h_out, k, verify);

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
		}
		fclose(fp);
	
		std::cout<<"--------------------done..."<<std::endl;
		_clRelease();
		free(h_in_matrix);
		free(h_filter_matrix);
		free(h_out_matrix);
		if(verify){
			free(h_out_matrix_ref);		
		}
		free(trials);
	}
	catch(std::string msg){
		std::cout<<"Exception in main::"<<msg<<std::endl;
	}
		
    return 0;
}
