#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

__attribute__((vec_type_hint(float3)))
__kernel void convolve_native(const __global  float * input, __constant float * filter, \
                  __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float sum = 0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c++){
            int idx_filter_tot  = idx_filter  + c;
            int idx_in_tot = idx_in + c;
            float in = input[idx_in_tot];
            float f = filter[idx_filter_tot];
            sum += in * f;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_2_step_1(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float sum_0 = 0.0f;
    float sum_1 = 0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF2){
            int idx_filter_tot  = idx_filter  + c;
            int idx_in_tot = idx_in + c;
            float in_0 = input[idx_in_tot+0];
            float in_1 = input[idx_in_tot+1];
            float f_0 = filter[idx_filter_tot+0];
            float f_1 = filter[idx_filter_tot+1];
            sum_0 += in_0 * f_0;
            sum_1 += in_1 * f_1;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum_0 + sum_1;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_2_step_2(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float2 sum = (float2)0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF2){
        	int idx_filter_tot  = idx_filter  + c;
          int idx_in_tot = idx_in + c;
					float2 in = vload2(0, &(input[idx_in_tot]));
					float2 f = vload2(0, &(filter[idx_filter_tot]));					
					sum += in * f;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum.s0 + sum.s1;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_4_step_1(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float sum_0 = 0.0f;
    float sum_1 = 0.0f;
    float sum_2 = 0.0f;
    float sum_3 = 0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF4){
            int idx_filter_tot  = idx_filter  + c;
            int idx_in_tot = idx_in + c;
            float in_0 = input[idx_in_tot+0];
            float in_1 = input[idx_in_tot+1];
            float in_2 = input[idx_in_tot+2];
            float in_3 = input[idx_in_tot+3];
            float f_0 = filter[idx_filter_tot+0];
            float f_1 = filter[idx_filter_tot+1];
            float f_2 = filter[idx_filter_tot+2];
            float f_3 = filter[idx_filter_tot+3];
            sum_0 += in_0 * f_0;
            sum_1 += in_1 * f_1;
            sum_2 += in_2 * f_2;
            sum_3 += in_3 * f_3;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum_0 + sum_1 + sum_2 + sum_3;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_4_step_2(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float4 sum = (float4)0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF4){
        	int idx_filter_tot  = idx_filter  + c;
          int idx_in_tot = idx_in + c;
					float4 in = vload4(0, &(input[idx_in_tot]));
					float4 f = vload4(0, &(filter[idx_filter_tot]));					
					sum += in * f;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum.s0 + sum.s1 + sum.s2 + sum.s3;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_8_step_1(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float sum_0 = 0.0f;
    float sum_1 = 0.0f;
    float sum_2 = 0.0f;
    float sum_3 = 0.0f;
    float sum_4 = 0.0f;
    float sum_5 = 0.0f;
    float sum_6 = 0.0f;
    float sum_7 = 0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF8){
            int idx_filter_tot  = idx_filter  + c;
            int idx_in_tot = idx_in + c;
            float in_0 = input[idx_in_tot+0];
            float in_1 = input[idx_in_tot+1];
            float in_2 = input[idx_in_tot+2];
            float in_3 = input[idx_in_tot+3];
            float in_4 = input[idx_in_tot+4];
            float in_5 = input[idx_in_tot+5];
            float in_6 = input[idx_in_tot+6];
            float in_7 = input[idx_in_tot+7];

            float f_0 = filter[idx_filter_tot+0];
            float f_1 = filter[idx_filter_tot+1];
            float f_2 = filter[idx_filter_tot+2];
            float f_3 = filter[idx_filter_tot+3];
            float f_4 = filter[idx_filter_tot+4];
            float f_5 = filter[idx_filter_tot+5];
            float f_6 = filter[idx_filter_tot+6];
            float f_7 = filter[idx_filter_tot+7];

            sum_0 += in_0 * f_0;
            sum_1 += in_1 * f_1;
            sum_2 += in_2 * f_2;
            sum_3 += in_3 * f_3;
            sum_4 += in_4 * f_4;
            sum_5 += in_5 * f_5;
            sum_6 += in_6 * f_6;
            sum_7 += in_7 * f_7;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum_0 + sum_1 + sum_2 + sum_3 + \
			sum_4 + sum_5 + sum_6 + sum_7;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_8_step_2(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float8 sum = (float8)0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF8){
        	int idx_filter_tot  = idx_filter  + c;
          int idx_in_tot = idx_in + c;
					float8 in = vload8(0, &(input[idx_in_tot]));
					float8 f = vload8(0, &(filter[idx_filter_tot]));					
					sum += in * f;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum.s0 + sum.s1 + sum.s2 + sum.s3 + \
			sum.s4 + sum.s5 + sum.s6 + sum.s7;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_16_step_1(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float sum_0 = 0.0f;
    float sum_1 = 0.0f;
    float sum_2 = 0.0f;
    float sum_3 = 0.0f;
    float sum_4 = 0.0f;
    float sum_5 = 0.0f;
    float sum_6 = 0.0f;
    float sum_7 = 0.0f;
    float sum_8 = 0.0f;
    float sum_9 = 0.0f;
    float sum_a = 0.0f;
    float sum_b = 0.0f;
    float sum_c = 0.0f;
    float sum_d = 0.0f;
    float sum_e = 0.0f;
    float sum_f = 0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF16){
            int idx_filter_tot  = idx_filter  + c;
            int idx_in_tot = idx_in + c;
            float in_0 = input[idx_in_tot+0];
            float in_1 = input[idx_in_tot+1];
            float in_2 = input[idx_in_tot+2];
            float in_3 = input[idx_in_tot+3];
            float in_4 = input[idx_in_tot+4];
            float in_5 = input[idx_in_tot+5];
            float in_6 = input[idx_in_tot+6];
            float in_7 = input[idx_in_tot+7];
            float in_8 = input[idx_in_tot+8];
            float in_9 = input[idx_in_tot+9];
            float in_a = input[idx_in_tot+10];
            float in_b = input[idx_in_tot+11];
            float in_c = input[idx_in_tot+12];
            float in_d = input[idx_in_tot+13];
            float in_e = input[idx_in_tot+14];
            float in_f = input[idx_in_tot+15];

            float f_0 = filter[idx_filter_tot+0];
            float f_1 = filter[idx_filter_tot+1];
            float f_2 = filter[idx_filter_tot+2];
            float f_3 = filter[idx_filter_tot+3];
            float f_4 = filter[idx_filter_tot+4];
            float f_5 = filter[idx_filter_tot+5];
            float f_6 = filter[idx_filter_tot+6];
            float f_7 = filter[idx_filter_tot+7];
            float f_8 = filter[idx_filter_tot+8];
            float f_9 = filter[idx_filter_tot+9];
            float f_a = filter[idx_filter_tot+10];
            float f_b = filter[idx_filter_tot+11];
            float f_c = filter[idx_filter_tot+12];
            float f_d = filter[idx_filter_tot+13];
            float f_e = filter[idx_filter_tot+14];
            float f_f = filter[idx_filter_tot+15];

            sum_0 += in_0 * f_0;
            sum_1 += in_1 * f_1;
            sum_2 += in_2 * f_2;
            sum_3 += in_3 * f_3;
            sum_4 += in_4 * f_4;
            sum_5 += in_5 * f_5;
            sum_6 += in_6 * f_6;
            sum_7 += in_7 * f_7;
            sum_8 += in_8 * f_8;
            sum_9 += in_9 * f_9;
            sum_a += in_a * f_a;
            sum_b += in_b * f_b;
            sum_c += in_c * f_c;
            sum_d += in_d * f_d;
            sum_e += in_e * f_e;
            sum_f += in_f * f_f;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum_0 + sum_1 + sum_2 + sum_3 + \
			sum_4 + sum_5 + sum_6 + sum_7 + \
			sum_8 + sum_9 + sum_a + sum_b + \
			sum_c + sum_d + sum_e + sum_f;
}

__attribute__((vec_type_hint(float3)))
__kernel void convolve_intra_16_step_2(const __global  float * input, __constant float * filter, \
    __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0);
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out;
    const int y_in_topleft = y_out;

    float16 sum = (float16)0.0f;
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c=c+VF16){
        	int idx_filter_tot  = idx_filter  + c;
          int idx_in_tot = idx_in + c;
					float16 in = vload16(0, &(input[idx_in_tot]));
					float16 f = vload16(0, &(filter[idx_filter_tot]));					
					sum += in * f;
        }
    }
    const int idx_out = y_out * n_width + x_out;
    output[idx_out] = sum.s0 + sum.s1 + sum.s2 + sum.s3 + \
			sum.s4 + sum.s5 + sum.s6 + sum.s7 + \
			sum.s8 + sum.s9 + sum.sa + sum.sb + \
			sum.sc + sum.sd + sum.se + sum.sf;
}


