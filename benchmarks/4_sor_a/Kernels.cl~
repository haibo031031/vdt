#define out(row, col, w) out[(row)*w+(col)]
#define in(row, col, w) in[(row)*w+(col)]
#define _out(row, col, w) &(out[(row)*w+(col)])
#define _in(row, col, w) &(in[(row)*w+(col)])

#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16
 
__kernel void read_1(const __global float* in, __global float* out, int w, int b){
 
  int idx = get_global_id(0);
  int idy = get_global_id(1);
  
  int col = idx + 1;
  int row = idy + 1;
  int side = w + 2*b;
  float coff = 4.0f;
  
  float in_e = in((row + 0), (col + 1), side);
  float in_w = in((row + 0), (col - 1), side);
  float in_n = in((row - 1), (col + 0), side);
  float in_s = in((row + 1), (col + 0), side);
  float sum = (in_e + in_w + in_n + in_s)/coff;
  
  out(idy, idx, w) =  sum;
}


__kernel void read_2(const __global float* in, __global float* out, int w, int b){
 
  int idx = get_global_id(0) * VF2;
  int idy = get_global_id(1);
  
  int col = idx + 1;
  int row = idy + 1;
  int side = w + 2*b;
  float coff = 4.0f;
  
	float2 in_e = vload2(0, _in((row + 0), (col + 1 + 0), side));
	float2 in_w = vload2(0, _in((row + 0), (col - 1 + 0), side));
	float2 in_n = vload2(0, _in((row - 1), (col + 0 + 0), side));
	float2 in_s = vload2(0, _in((row + 1), (col + 0 + 0), side));
	
	float2 sum = (in_e + in_w + in_n + in_s)/coff;
  
	vstore2(sum, 0, _out(idy, idx + 0, w));
}


__kernel void read_4(const __global float* in, __global float* out, int w, int b){
 
  int idx = get_global_id(0) * VF4;
  int idy = get_global_id(1);
  
  int col = idx + 1;
  int row = idy + 1;
  int side = w + 2*b;
  float4 coff = (float4)4.0f;
  
	float4 in_e = vload4(0, _in((row + 0), (col + 1 + 0), side));
	float4 in_w = vload4(0, _in((row + 0), (col - 1 + 0), side));
	float4 in_n = vload4(0, _in((row - 1), (col + 0 + 0), side));
	float4 in_s = vload4(0, _in((row + 1), (col + 0 + 0), side));
	
	float4 sum = (in_e + in_w + in_n + in_s)/coff;
  
	vstore4(sum, 0, _out(idy, idx + 0, w));
}

__kernel void read_8(const __global float* in, __global float* out, int w, int b){
 
  int idx = get_global_id(0) * VF8;
  int idy = get_global_id(1);
  
  int col = idx + 1;
  int row = idy + 1;
  int side = w + 2*b;
  float8 coff = (float8)4.0f;
  
	float8 in_e = vload8(0, _in((row + 0), (col + 1 + 0), side));
	float8 in_w = vload8(0, _in((row + 0), (col - 1 + 0), side));
	float8 in_n = vload8(0, _in((row - 1), (col + 0 + 0), side));
	float8 in_s = vload8(0, _in((row + 1), (col + 0 + 0), side));
	
	float8 sum = (in_e + in_w + in_n + in_s)/coff;
  
	vstore8(sum, 0, _out(idy, idx + 0, w));
}


__kernel void read_16(const __global float* in, __global float* out, int w, int b){
 
  int idx = get_global_id(0) * VF16;
  int idy = get_global_id(1);
  
  int col = idx + 1;
  int row = idy + 1;
  int side = w + 2*b;
  float16 coff = (float16)4.0f;
  
	float16 in_e = vload16(0, _in((row + 0), (col + 1 + 0), side));
	float16 in_w = vload16(0, _in((row + 0), (col - 1 + 0), side));
	float16 in_n = vload16(0, _in((row - 1), (col + 0 + 0), side));
	float16 in_s = vload16(0, _in((row + 1), (col + 0 + 0), side));
	
	float16 sum = (in_e + in_w + in_n + in_s)/coff;
  
	vstore16(sum, 0, _out(idy, idx + 0, w));
}




