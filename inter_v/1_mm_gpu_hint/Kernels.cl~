/* ============================================================
//--cambine: kernel funtion of matrix multiplication
//--author:	created by Jianbin Fang
//--date:	17/05/2011
============================================================ */
#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

__attribute__((vec_type_hint(float3)))
__kernel void mm_native(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float res = 0;
	for(k=0; k<w; k=k+1){
    		float val_a = in_a[id_y*w+k];
    		float val_b = in_b[k*w+id_x];
		res +=  val_a*val_b ;
	}
	out_c[id_y*w+id_x] = res;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_inter_2_step_3(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){

	int id_x = get_global_id(0);
	int id_y = get_global_id(1);	
	
	int id_x_new = id_x * VF2;

	int k=0;
	float2 res = 0;
	for(k=0; k<w; k=k+1){    	
   	float2 val_a = (float2)(in_a[id_y*w+k]);
		float2 val_b = vload2(0, &(in_b[k*w+id_x_new]));
		res +=  val_a * val_b;
	}
	vstore2(res, 0, &(out_c[id_y*w+id_x_new+0]));	
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_inter_4_step_3(const __global float * in_a, const __global float * in_b, \
			__global float * out_c, const int w, const int h){

	int id_x = get_global_id(0);	
	int id_y = get_global_id(1);
	 
	
	int k=0;	
	float4 res = (float4)(0.0);	
	int id_x_new = id_x * VF4;
	
	for(k=0; k<w; k=k+1){
		float4 val_a = (float4)(in_a[id_y*w+k]);
		float4 val_b = vload4(0, &(in_b[k*w+id_x_new]));
		res += val_a*val_b;
	}

	vstore4(res, 0, &(out_c[id_y*w+id_x_new+0]));	
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_inter_8_step_3(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){

	int id_x = get_global_id(0);
	int id_y = get_global_id(1);
	
	
	int id_x_new = id_x * VF8;
	int k=0;
	float8 res = (float8)(0.0);
	for(k=0; k<w; k=k+1){    	

		float8 val_a = (float8)(in_a[id_y*w+k]);
		float8 val_b = vload8(0, &(in_b[k*w+id_x_new+0]));
		res += val_a * val_b;

	}	
	vstore8(res, 0, &(out_c[id_y*w+id_x_new+0]));	
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_inter_16_step_3(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){

	int id_x = get_global_id(0);
	int id_y = get_global_id(1);
	
	
	int id_x_new = id_x * VF16;
	int k=0;
	float16 res = (float16)(0.0);

	for(k=0; k<w; k=k+1){    	

		float16 val_a = (float16)(in_a[id_y*w+k]);
		float16 val_b = vload16(0, &(in_b[k*w+id_x_new+0]));
		res += val_a * val_b;
	}	

	vstore16(res, 0, &(out_c[id_y*w+id_x_new+0]));	
}

