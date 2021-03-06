/* ============================================================
//--cambine: kernel funtion of matrix multiplication
//--author:	created by Jianbin Fang
//--date:	17/05/2011
============================================================ */
#define VF 4
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
__kernel void mm_intra_2_step_1(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float res_0 = 0.0;
	float res_1 = 0.0;
  for(k=0; k<w; k=k+VF2){
	 	float val_a_0 = in_a[id_y*w+k+0];
   	float val_a_1 = in_a[id_y*w+k+1];
   	float val_b_0 = in_b[(k+0)*w+id_x];
   	float val_b_1 = in_b[(k+1)*w+id_x];
		res_0 += val_a_0*val_b_0;
		res_1 += val_a_1*val_b_1;
	}
	out_c[id_y*w+id_x] = res_0 + res_1;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_2_step_2(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float2 res = (float2)(0.0);
  for(k=0; k<w; k=k+VF2){
		float2 val_a = vload2(0, &(in_a[id_y*w+k+0]));
		float2 val_b = (float2)(in_b[(k+0)*w+id_x], in_b[(k+1)*w+id_x]);
		res += val_a * val_b;
	}
	out_c[id_y*w+id_x] = res.s0 + res.s1;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_4_step_1(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float res_0 = 0.0f;
	float res_1 = 0.0f;
	float res_2 = 0.0f;
	float res_3 = 0.0f;
  for(k=0; k<w; k=k+VF4){
	 	float val_a_0 = in_a[id_y*w+k+0];
   	float val_a_1 = in_a[id_y*w+k+1];
	 	float val_a_2 = in_a[id_y*w+k+2];
   	float val_a_3 = in_a[id_y*w+k+3];

   	float val_b_0 = in_b[(k+0)*w+id_x];
   	float val_b_1 = in_b[(k+1)*w+id_x];
   	float val_b_2 = in_b[(k+2)*w+id_x];
   	float val_b_3 = in_b[(k+3)*w+id_x];

		res_0 += val_a_0 * val_b_0;
		res_1 += val_a_1 * val_b_1;
		res_2 += val_a_2 * val_b_2;
		res_3 += val_a_3 * val_b_3;
	}
	out_c[id_y*w+id_x] = res_0 + res_1 + res_2 + res_3;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_4_step_2(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float4 res = (float4)(0.0);
  for(k=0; k<w; k=k+VF4){
		float4 val_a = vload4(0, &(in_a[id_y*w+k]));
		float4 val_b = (float4)(in_b[(k+0)*w+id_x], in_b[(k+1)*w+id_x], in_b[(k+2)*w+id_x], in_b[(k+3)*w+id_x]);
		res += val_a * val_b;
	}
	out_c[id_y*w+id_x] = res.s0 + res.s1 + res.s2 + res.s3;
}


__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_8_step_1(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float res_0 = 0.0f;
	float res_1 = 0.0f;
	float res_2 = 0.0f;
	float res_3 = 0.0f;
	float res_4 = 0.0f;
	float res_5 = 0.0f;
	float res_6 = 0.0f;
	float res_7 = 0.0f;
  for(k=0; k<w; k=k+VF8){

	 	float val_a_0 = in_a[id_y*w+k+0];
   	float val_a_1 = in_a[id_y*w+k+1];
	 	float val_a_2 = in_a[id_y*w+k+2];
   	float val_a_3 = in_a[id_y*w+k+3];
	 	float val_a_4 = in_a[id_y*w+k+4];
   	float val_a_5 = in_a[id_y*w+k+5];
	 	float val_a_6 = in_a[id_y*w+k+6];
   	float val_a_7 = in_a[id_y*w+k+7];


   	float val_b_0 = in_b[(k+0)*w+id_x];
   	float val_b_1 = in_b[(k+1)*w+id_x];
   	float val_b_2 = in_b[(k+2)*w+id_x];
   	float val_b_3 = in_b[(k+3)*w+id_x];
   	float val_b_4 = in_b[(k+4)*w+id_x];
   	float val_b_5 = in_b[(k+5)*w+id_x];
   	float val_b_6 = in_b[(k+6)*w+id_x];
   	float val_b_7 = in_b[(k+7)*w+id_x];

		res_0 += val_a_0 * val_b_0;
		res_1 += val_a_1 * val_b_1;
		res_2 += val_a_2 * val_b_2;
		res_3 += val_a_3 * val_b_3;
		res_4 += val_a_4 * val_b_4;
		res_5 += val_a_5 * val_b_5;
		res_6 += val_a_6 * val_b_6;
		res_7 += val_a_7 * val_b_7;
	}

	out_c[id_y*w+id_x] = res_0 + res_1 + res_2 + res_3 + \
		res_4 + res_5 + res_6 + res_7;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_8_step_2(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){								

	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float8 res = (float8)(0.0);
  for(k=0; k<w; k=k+VF8){
		float8 val_a = vload8(0, &(in_a[id_y*w+k]));
		float8 val_b = (float8)(in_b[(k+0)*w+id_x], in_b[(k+1)*w+id_x], in_b[(k+2)*w+id_x], in_b[(k+3)*w+id_x], \
				in_b[(k+4)*w+id_x], in_b[(k+5)*w+id_x], in_b[(k+6)*w+id_x], in_b[(k+7)*w+id_x]);

		res += val_a * val_b;

	}

	out_c[id_y*w+id_x] = res.s0 + res.s1 + res.s2 + res.s3 + \
		res.s4 + res.s5 + res.s6 + res.s7;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_16_step_1(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){
								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);

	int k = 0;
	float res_0 = 0.0f;
	float res_1 = 0.0f;
	float res_2 = 0.0f;
	float res_3 = 0.0f;
	float res_4 = 0.0f;
	float res_5 = 0.0f;
	float res_6 = 0.0f;
	float res_7 = 0.0f;
	float res_8 = 0.0f;
	float res_9 = 0.0f;
	float res_10 = 0.0f;
	float res_11 = 0.0f;
	float res_12 = 0.0f;
	float res_13 = 0.0f;
	float res_14 = 0.0f;
	float res_15 = 0.0f;

  for(k=0; k<w; k=k+VF16){

	 	float val_a_0 = in_a[id_y*w+k+0];
   	float val_a_1 = in_a[id_y*w+k+1];
	 	float val_a_2 = in_a[id_y*w+k+2];
   	float val_a_3 = in_a[id_y*w+k+3];
	 	float val_a_4 = in_a[id_y*w+k+4];
   	float val_a_5 = in_a[id_y*w+k+5];
	 	float val_a_6 = in_a[id_y*w+k+6];
   	float val_a_7 = in_a[id_y*w+k+7];
	 	float val_a_8 = in_a[id_y*w+k+8];
   	float val_a_9 = in_a[id_y*w+k+9];
	 	float val_a_10 = in_a[id_y*w+k+10];
   	float val_a_11 = in_a[id_y*w+k+11];
	 	float val_a_12 = in_a[id_y*w+k+12];
   	float val_a_13 = in_a[id_y*w+k+13];
	 	float val_a_14 = in_a[id_y*w+k+14];
   	float val_a_15 = in_a[id_y*w+k+15];

   	float val_b_0 = in_b[(k+0)*w+id_x];
   	float val_b_1 = in_b[(k+1)*w+id_x];
   	float val_b_2 = in_b[(k+2)*w+id_x];
   	float val_b_3 = in_b[(k+3)*w+id_x];
   	float val_b_4 = in_b[(k+4)*w+id_x];
   	float val_b_5 = in_b[(k+5)*w+id_x];
   	float val_b_6 = in_b[(k+6)*w+id_x];
   	float val_b_7 = in_b[(k+7)*w+id_x];
   	float val_b_8 = in_b[(k+8)*w+id_x];
   	float val_b_9 = in_b[(k+9)*w+id_x];
   	float val_b_10 = in_b[(k+10)*w+id_x];
   	float val_b_11 = in_b[(k+11)*w+id_x];
   	float val_b_12 = in_b[(k+12)*w+id_x];
   	float val_b_13 = in_b[(k+13)*w+id_x];
   	float val_b_14 = in_b[(k+14)*w+id_x];
   	float val_b_15 = in_b[(k+15)*w+id_x];

		res_0 += val_a_0 * val_b_0;
		res_1 += val_a_1 * val_b_1;
		res_2 += val_a_2 * val_b_2;
		res_3 += val_a_3 * val_b_3;
		res_4 += val_a_4 * val_b_4;
		res_5 += val_a_5 * val_b_5;
		res_6 += val_a_6 * val_b_6;
		res_7 += val_a_7 * val_b_7;
		res_8 += val_a_8 * val_b_8;
		res_9 += val_a_9 * val_b_9;
		res_10 += val_a_10 * val_b_10;
		res_11 += val_a_11 * val_b_11;
		res_12 += val_a_12 * val_b_12;
		res_13 += val_a_13 * val_b_13;
		res_14 += val_a_14 * val_b_14;
		res_15 += val_a_15 * val_b_15;
	}
	out_c[id_y*w+id_x] = res_0 + res_1 + res_2 + res_3 + \
		res_4 + res_5 + res_6 + res_7 + \
		res_8 + res_9 + res_10 + res_11 + \
		res_12 + res_13 + res_14 + res_15;
}

__attribute__((vec_type_hint(float3)))
__kernel void mm_intra_16_step_2(const __global float * in_a, const __global float * in_b, \
				__global float * out_c, const int w, const int h){								
	int id_x = get_global_id(0);
	int id_y = get_global_id(1);
	int k = 0;
	float16 res = (float16)(0.0);
  for(k=0; k<w; k=k+VF16){
		float16 val_a = vload16(0, &(in_a[id_y*w+k]));
		float16 val_b = (float16)(in_b[(k+0)*w+id_x], in_b[(k+1)*w+id_x], in_b[(k+2)*w+id_x], in_b[(k+3)*w+id_x], \
				in_b[(k+4)*w+id_x], in_b[(k+5)*w+id_x], in_b[(k+6)*w+id_x], in_b[(k+7)*w+id_x], \
				in_b[(k+8)*w+id_x], in_b[(k+9)*w+id_x], in_b[(k+10)*w+id_x], in_b[(k+11)*w+id_x], \
				in_b[(k+12)*w+id_x], in_b[(k+13)*w+id_x], in_b[(k+14)*w+id_x], in_b[(k+15)*w+id_x]);
		res += val_a * val_b;
	}
	out_c[id_y*w+id_x] = res.s0 + res.s1 + res.s2 + res.s3 + \
		res.s4 + res.s5 + res.s6 + res.s7 + \
		res.s8 + res.s9 + res.sa + res.sb + \
		res.sc + res.sd + res.se + res.sf;
}


