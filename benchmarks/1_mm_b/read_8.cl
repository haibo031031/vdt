#define VF 4
#define VF1 1
#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

__kernel void read_8(const __global float *input,__global float *output, const int w, const int h){
	
	int id_x = get_global_id(0) * VF8;
	int id_y = get_global_id(1);
	int id_g = id_y * w + id_x;
	
	float8 val = (float8)(0.0f);	
	for(int i=0; i<h; i++){
		val += vload8(0, &(input[id_x + i * w]));
	}
		
	vstore8(val, 0, &(output[id_g]));
}


