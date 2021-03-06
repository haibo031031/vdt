#define VF 4
#define VF1 1
#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

__kernel void read_1(const __global float *input,__global float *output, const int w, const int f){
	
	int id_x = get_global_id(0) * VF1;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int top_left = id_g;
	
	float val = (float)(0.0f);	
	for(int i=0; i<f; i++){
		for(int j=0; j<f; j++){
			int id_current = top_left + i * w + j;
			val += input[id_current];
		}
	}			
	output[id_g] = val;
}

__kernel void read_2(const __global float *input,__global float *output, const int w, const int f){
	
	int id_x = get_global_id(0) * VF2;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int top_left = id_g;
	
	float2 val = (float2)(0.0f);	
	for(int i=0; i<f; i++){
		for(int j=0; j<f; j++){
			int id_current = top_left + i * w + j;
			val += vload2(0, &(input[id_current])); 
		}
	}			
	vstore2(val, 0, &(output[id_g]));
}

__kernel void read_4(const __global float *input,__global float *output, const int w, const int f){
	
	int id_x = get_global_id(0) * VF4;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int top_left = id_g;
	
	float4 val = (float4)(0.0f);	
	for(int i=0; i<f; i++){
		for(int j=0; j<f; j++){
			int id_current = top_left + i * w + j;
			val += vload4(0, &(input[id_current])); 
		}
	}			
	vstore4(val, 0, &(output[id_g]));
}

__kernel void read_8(const __global float *input,__global float *output, const int w, const int f){
	
	int id_x = get_global_id(0) * VF8;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int top_left = id_g;
	
	float8 val = (float8)(0.0f);	
	for(int i=0; i<f; i++){
		for(int j=0; j<f; j++){
			int id_current = top_left + i * w + j;
			val += vload8(0, &(input[id_current])); 
		}
	}			
	vstore8(val, 0, &(output[id_g]));
}

__kernel void read_16(const __global float *input,__global float *output, const int w, const int f){
	
	int id_x = get_global_id(0) * VF16;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int top_left = id_g;
	
	float16 val = (float16)(0.0f);	
	for(int i=0; i<f; i++){
		for(int j=0; j<f; j++){
			int id_current = top_left + i * w + j;
			val += vload16(0, &(input[id_current])); 
		}
	}			
	vstore16(val, 0, &(output[id_g]));
}




