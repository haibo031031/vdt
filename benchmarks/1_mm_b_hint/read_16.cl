#define VF 4
#define VF1 1
#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

__kernel void read_16(const __global float *input,__global float *output, const int w, const int h){
	
	int id_x = get_global_id(0) * VF16;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float16 val = (float16)(0.0f);	
	for(int i=0; i<h; i++){
		val += vload16(0, &(input[id_x + i * w]));
	}
		
	vstore16(val, 0, &(output[id_g]));
}


