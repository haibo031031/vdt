#define VF 4
#define VF1 1
#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

#define MADD1_OP  s=v1-s*v2;

#define MADD1_MOP20  \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP MADD1_OP \
     MADD1_OP MADD1_OP MADD1_OP MADD1_OP	 

#define MADD1_MOP100 \
		MADD1_MOP20 MADD1_MOP20 MADD1_MOP20 MADD1_MOP20

__kernel void flops_4(const __global float * input, __global float *output, const int w, \
	int rep, float vv1, float vv2){
	
	int j;
	int repeat = rep;
	int gx = get_global_id(0) * VF4;
	int gy = get_global_id(1);
	int gid = gy * w + gx;
	float4 s = vload4(0, &(input[gid]));
	float4 v1 = vv1;
	float4 v2 = vv2;
	for (j=0; j<repeat; ++j) 
	{
		MADD1_MOP100 MADD1_MOP100 
		MADD1_MOP100 MADD1_MOP100 
		MADD1_MOP100 MADD1_MOP100 
		MADD1_MOP100 MADD1_MOP100
		MADD1_MOP100 MADD1_MOP100 
		MADD1_MOP100 MADD1_MOP100
		MADD1_MOP100 MADD1_MOP100 
		MADD1_MOP100 MADD1_MOP100
	}
	vstore4(s, 0, &(output[gid]));
}


