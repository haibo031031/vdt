#define VF 4
#define VF1 1
#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

__kernel void read_1(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF1;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float val = (float)(0.0f);
	float con = (float)(3.0);
	val = input[id_g];
	val += con;
	output[id_g] = val;
}

__kernel void read_2(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF2;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float2 val = (float2)(0.0f);
	float2 con = (float2)(3.0);
	val = vload2(0, &(input[id_g]));
	val += con;
	vstore2(val, 0, &(output[id_g]));
}

__kernel void read_4(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF4;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float4 val = (float4)(0.0f);
	float4 con = (float4)(3.0);
	val = vload4(0, &(input[id_g]));
	val += con;
	vstore4(val, 0, &(output[id_g]));
}

__kernel void read_8(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF8;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float8 val = (float8)(0.0f);
	float8 con = (float8)(3.0);
	val = vload8(0, &(input[id_g]));
	val += con;
	vstore8(val, 0, &(output[id_g]));
}

__kernel void read_16(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF16;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float16 val = (float16)(0.0f);
	float16 con = (float16)(3.0);
	val = vload16(0, &(input[id_g]));
	val += con;
	vstore16(val, 0, &(output[id_g]));
}


