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
	int id_s = id_y * w;
	
	float val = (float)(0.0f);	
	for(int i=0; i<w; i++){
		val += input[id_s + i];
	}
		
	output[id_g] = val;
}

__kernel void read_2(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF2;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int id_s = id_y * w;
	
	float2 val = (float2)(0.0f);	
	for(int i=0; i<w; i++){
		val += (float2)(input[id_s + i]);
	}
		
	vstore2(val, 0, &(output[id_g]));
}

__kernel void read_4(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF4;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int id_s = id_y * w;
	
	float4 val = (float4)(0.0f);	
	for(int i=0; i<w; i++){
		val += (float4)(input[id_s + i]);
	}
		
	vstore4(val, 0, &(output[id_g]));
}

__kernel void read_8(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF8;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int id_s = id_y * w;
	
	float8 val = (float8)(0.0f);	
	for(int i=0; i<w; i++){
		val += (float8)(input[id_s + i]);
	}
		
	vstore8(val, 0, &(output[id_g]));
}

__kernel void read_16(const __global float *input,__global float *output, const int w){
	
	int id_x = get_global_id(0) * VF16;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	int id_s = id_y * w;
	
	float16 val = (float16)(0.0f);	
	for(int i=0; i<w; i++){
		val += (float16)(input[id_s + i]);
	}
		
	vstore16(val, 0, &(output[id_g]));
}


