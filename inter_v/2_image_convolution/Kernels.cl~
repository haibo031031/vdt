#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

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

__kernel void convolve_inter_2_step_3(const __global  float * input, __constant float * filter, \
                  __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0) ;
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out * VF2;
    const int y_in_topleft = y_out;

    float2 sum = (float2)(0.0f);
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c++){
            int idx_filter_tot = idx_filter + c;
            int idx_in_tot = idx_in + c;
	    float2 in = vload2(0, &(input[idx_in_tot]));
	    float2 f = (float2)(filter[idx_filter_tot]);
	    sum += in * f;
        }
    }
    int idx_out = (y_out * n_width + x_out) * VF2;
    vstore2(sum, 0, &(output[idx_out]));
}

__kernel void convolve_inter_4_step_3(const __global  float * input, __constant float * filter, \
                  __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0) ;
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out * VF4;
    const int y_in_topleft = y_out;

    float4 sum = (float4)(0.0f);
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c++){
            int idx_filter_tot = idx_filter + c;
            int idx_in_tot = idx_in + c;
	    float4 in = vload4(0, &(input[idx_in_tot]));
	    float4 f = (float4)(filter[idx_filter_tot]);
	    sum += in * f;
        }
    }
    int idx_out = (y_out * n_width + x_out) * VF4;
    vstore4(sum, 0, &(output[idx_out + 0]));
}

__kernel void convolve_inter_8_step_3(const __global  float * input, __constant float * filter, \
                  __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0) ;
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out * VF8;
    const int y_in_topleft = y_out;

    float8 sum = (float8)(0.0f);
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c++){
            int idx_filter_tot = idx_filter + c;
            int idx_in_tot = idx_in + c;
	    float8 in = vload8(0, &(input[idx_in_tot]));
	    float8 f = (float8)(filter[idx_filter_tot]);
	    sum += in * f;
        }
    }
    int idx_out = (y_out * n_width + x_out) * VF8;
    vstore8(sum, 0, &(output[idx_out + 0]));
}

__kernel void convolve_inter_16_step_3(const __global  float * input, __constant float * filter, \
                  __global  float * output, const int n_in_width, const int n_filter_width){
    const int n_width = get_global_size(0);
    const int x_out = get_global_id(0) ;
    const int y_out = get_global_id(1);
    const int x_in_topleft = x_out * VF16;
    const int y_in_topleft = y_out;

    float16 sum = (float16)(0.0f);
    for (int r = 0; r < n_filter_width; r++){
        int idx_filter = r * n_filter_width;
        int y_in = y_in_topleft + r;
        int idx_in = y_in * n_in_width + x_in_topleft;

        for (int c = 0; c < n_filter_width; c++){
            int idx_filter_tot = idx_filter + c;
            int idx_in_tot = idx_in + c;
	    float16 in = vload16(0, &(input[idx_in_tot]));
	    float16 f = (float16)(filter[idx_filter_tot]);
	    sum += in * f;
        }
    }
    int idx_out = (y_out * n_width + x_out) * VF16;
    vstore16(sum, 0, &(output[idx_out + 0]));
}


