#define S_LOWER_LIMIT 10.0f
#define S_UPPER_LIMIT 100.0f
#define K_LOWER_LIMIT 10.0f
#define K_UPPER_LIMIT 100.0f
#define T_LOWER_LIMIT 1.0f
#define T_UPPER_LIMIT 10.0f
#define R_LOWER_LIMIT 0.01f
#define R_UPPER_LIMIT 0.05f
#define SIGMA_LOWER_LIMIT 0.01f
#define SIGMA_UPPER_LIMIT 0.10f

#define VF2 2
#define VF4 4
#define VF8 8
#define VF16 16

/**
 * @brief   Abromowitz Stegun approxmimation for PHI (Cumulative Normal Distribution Function)
 * @param   X input value
 * @param   phi pointer to store calculated CND of X
 */
void phi4(float4 X, float4* phi)
{
    float4 y;
    float4 absX;
    float4 t;
    float4 result;

    const float4 c1 = (float4)0.319381530f;
    const float4 c2 = (float4)-0.356563782f;
    const float4 c3 = (float4)1.781477937f;
    const float4 c4 = (float4)-1.821255978f;
    const float4 c5 = (float4)1.330274429f;

    const float4 zero = (float4)0.0f;
    const float4 one = (float4)1.0f;
    const float4 two = (float4)2.0f;
    const float4 temp4 = (float4)0.2316419f;

    const float4 oneBySqrt2pi = (float4)0.398942280f;

    absX = fabs(X);
    t = one/(one + temp4 * absX);

    y = one - oneBySqrt2pi * exp(-X*X/two) * t 
        * (c1 + t
              * (c2 + t
                    * (c3 + t
                          * (c4 + t * c5))));

    result = (X < zero)? (one - y) : y;

    *phi = result;
}

void phi(float X, float* phi)
{
    float y;
    float absX;
    float t;
    float result;

    const float c1 = (float)0.319381530f;
    const float c2 = (float)-0.356563782f;
    const float c3 = (float)1.781477937f;
    const float c4 = (float)-1.821255978f;
    const float c5 = (float)1.330274429f;

    const float zero = (float)0.0f;
    const float one = (float)1.0f;
    const float two = (float)2.0f;
    const float temp4 = (float)0.2316419f;

    const float oneBySqrt2pi = (float)0.398942280f;

    absX = fabs(X);
    t = one/(one + temp4 * absX);

    y = one - oneBySqrt2pi * exp(-X*X/two) * t 
        * (c1 + t
              * (c2 + t
                    * (c3 + t
                          * (c4 + t * c5))));

    result = (X < zero)? (one - y) : y;

    *phi = result;
}

void phi2(float2 X, float2 * phi)
{
    float2 y;
    float2 absX;
    float2 t;
    float2 result;

    const float2 c1 = (float2)0.319381530f;
    const float2 c2 = (float2)-0.356563782f;
    const float2 c3 = (float2)1.781477937f;
    const float2 c4 = (float2)-1.821255978f;
    const float2 c5 = (float2)1.330274429f;

    const float2 zero = (float2)0.0f;
    const float2 one = (float2)1.0f;
    const float2 two = (float2)2.0f;
    const float2 temp4 = (float2)0.2316419f;

    const float2 oneBySqrt2pi = (float2)0.398942280f;

    absX = fabs(X);
    t = one/(one + temp4 * absX);

    y = one - oneBySqrt2pi * exp(-X*X/two) * t 
        * (c1 + t
              * (c2 + t
                    * (c3 + t
                          * (c4 + t * c5))));

    result = (X < zero)? (one - y) : y;

    *phi = result;
}

void phi8(float8 X, float8 * phi)
{
    float8 y;
    float8 absX;
    float8 t;
    float8 result;

    const float8 c1 = (float8)0.319381530f;
    const float8 c2 = (float8)-0.356563782f;
    const float8 c3 = (float8)1.781477937f;
    const float8 c4 = (float8)-1.821255978f;
    const float8 c5 = (float8)1.330274429f;

    const float8 zero = (float8)0.0f;
    const float8 one = (float8)1.0f;
    const float8 two = (float8)2.0f;
    const float8 temp4 = (float8)0.2316419f;

    const float8 oneBySqrt2pi = (float8)0.398942280f;

    absX = fabs(X);
    t = one/(one + temp4 * absX);

    y = one - oneBySqrt2pi * exp(-X*X/two) * t 
        * (c1 + t
              * (c2 + t
                    * (c3 + t
                          * (c4 + t * c5))));

    result = (X < zero)? (one - y) : y;

    *phi = result;
}

void phi16(float16 X, float16 * phi)
{
    float16 y;
    float16 absX;
    float16 t;
    float16 result;

    const float16 c1 = (float16)0.319381530f;
    const float16 c2 = (float16)-0.356563782f;
    const float16 c3 = (float16)1.781477937f;
    const float16 c4 = (float16)-1.821255978f;
    const float16 c5 = (float16)1.330274429f;

    const float16 zero = (float16)0.0f;
    const float16 one = (float16)1.0f;
    const float16 two = (float16)2.0f;
    const float16 temp4 = (float16)0.2316419f;

    const float16 oneBySqrt2pi = (float16)0.398942280f;

    absX = fabs(X);
    t = one/(one + temp4 * absX);

    y = one - oneBySqrt2pi * exp(-X*X/two) * t 
        * (c1 + t
              * (c2 + t
                    * (c3 + t
                          * (c4 + t * c5))));

    result = (X < zero)? (one - y) : y;

    *phi = result;
}

/*
	native kernel
*/
__kernel void black_scholes_native(const __global float *randArray, \
             int width, __global float *call, __global float *put){
    float d1, d2;
    float phiD1, phiD2;
    float sigmaSqrtT;
    float KexpMinusRT;
    
    size_t xPos = get_global_id(0);
    size_t yPos = get_global_id(1);
    float two = (float)2.0f;
    float inRand = randArray[yPos * width + xPos];
    float S = S_LOWER_LIMIT * inRand + S_UPPER_LIMIT * (1.0f - inRand);
    float K = K_LOWER_LIMIT * inRand + K_UPPER_LIMIT * (1.0f - inRand);
    float T = T_LOWER_LIMIT * inRand + T_UPPER_LIMIT * (1.0f - inRand);
    float R = R_LOWER_LIMIT * inRand + R_UPPER_LIMIT * (1.0f - inRand);
    float sigmaVal = SIGMA_LOWER_LIMIT * inRand + SIGMA_UPPER_LIMIT * (1.0f - inRand);

    sigmaSqrtT = sigmaVal * sqrt(T);
    d1 = (log(S/K) + (R + sigmaVal * sigmaVal / two)* T)/ sigmaSqrtT;
    d2 = d1 - sigmaSqrtT;

    KexpMinusRT = K * exp(-R * T);
    phi(d1, &phiD1), phi(d2, &phiD2);
    call[yPos * width + xPos] = S * phiD1 - KexpMinusRT * phiD2;
    phi(-d1, &phiD1), phi(-d2, &phiD2);
    put[yPos * width + xPos]  = KexpMinusRT * phiD2 - S * phiD1;
}


__kernel void black_scholes_inter_2_step_3(const __global float *randArray, \
             int width, __global float *call, __global float *put){
	float2 d1, d2;
	float2 phiD1, phiD2;
	float2 sigmaSqrtT;
	float2 KexpMinusRT;
    
	size_t xPos = get_global_id(0) * VF2;
	size_t yPos = get_global_id(1);

	float2 two = (float2)2.0f;
	float2 inRand = vload2(0, &(randArray[yPos * width + xPos + 0]));
	float2 S = (float2)S_LOWER_LIMIT * inRand + (float2)S_UPPER_LIMIT * ((float2)1.0f - inRand);
	float2 K = (float2)K_LOWER_LIMIT * inRand + (float2)K_UPPER_LIMIT * ((float2)1.0f - inRand);
	float2 T = (float2)T_LOWER_LIMIT * inRand + (float2)T_UPPER_LIMIT * ((float2)1.0f - inRand);
	float2 R = (float2)R_LOWER_LIMIT * inRand + (float2)R_UPPER_LIMIT * ((float2)1.0f - inRand);
	float2 sigmaVal = (float2)SIGMA_LOWER_LIMIT * inRand + (float2)SIGMA_UPPER_LIMIT * ((float2)1.0f - inRand);

	sigmaSqrtT = sigmaVal * sqrt(T);
	d1 = (log(S/K) + (R + sigmaVal * sigmaVal / two)* T)/ sigmaSqrtT;
	d2 = d1 - sigmaSqrtT;

	KexpMinusRT = K * exp(-R * T);
	phi2(d1, &phiD1), phi2(d2, &phiD2);
	vstore2(S * phiD1 - KexpMinusRT * phiD2, 0, &(call[yPos * width + xPos + 0]));
	phi2(-d1, &phiD1), phi2(-d2, &phiD2);
	vstore2(KexpMinusRT * phiD2 - S * phiD1, 0, &(put[yPos * width + xPos + 0]));
}


__kernel void black_scholes_inter_4_step_3(const __global float *randArray, \
             int width, __global float *call, __global float *put){
	float4 d1, d2;
	float4 phiD1, phiD2;
	float4 sigmaSqrtT;
	float4 KexpMinusRT;
    
	size_t xPos = get_global_id(0) * VF4;
	size_t yPos = get_global_id(1);

	float4 two = (float4)2.0f;
	float4 inRand = vload4(0, &(randArray[yPos * width + xPos + 0]));
	float4 S = (float4)S_LOWER_LIMIT * inRand + (float4)S_UPPER_LIMIT * ((float4)1.0f - inRand);
	float4 K = (float4)K_LOWER_LIMIT * inRand + (float4)K_UPPER_LIMIT * ((float4)1.0f - inRand);
	float4 T = (float4)T_LOWER_LIMIT * inRand + (float4)T_UPPER_LIMIT * ((float4)1.0f - inRand);
	float4 R = (float4)R_LOWER_LIMIT * inRand + (float4)R_UPPER_LIMIT * ((float4)1.0f - inRand);
	float4 sigmaVal = (float4)SIGMA_LOWER_LIMIT * inRand + (float4)SIGMA_UPPER_LIMIT * ((float4)1.0f - inRand);

	sigmaSqrtT = sigmaVal * sqrt(T);
	d1 = (log(S/K) + (R + sigmaVal * sigmaVal / two)* T)/ sigmaSqrtT;
	d2 = d1 - sigmaSqrtT;

	KexpMinusRT = K * exp(-R * T);
	phi4(d1, &phiD1), phi4(d2, &phiD2);
	vstore4(S * phiD1 - KexpMinusRT * phiD2, 0, &(call[yPos * width + xPos + 0]));
	phi4(-d1, &phiD1), phi4(-d2, &phiD2);
	vstore4(KexpMinusRT * phiD2 - S * phiD1, 0, &(put[yPos * width + xPos + 0]));
}


__kernel void black_scholes_inter_8_step_3(const __global float *randArray, \
             int width, __global float *call, __global float *put){
	float8 d1, d2;
	float8 phiD1, phiD2;
	float8 sigmaSqrtT;
	float8 KexpMinusRT;
    
	size_t xPos = get_global_id(0) * VF8;
	size_t yPos = get_global_id(1); 

	float8 two = (float8)2.0f;
	float8 inRand = vload8(0, &(randArray[yPos * width + xPos + 0]));
	float8 S = (float8)S_LOWER_LIMIT * inRand + (float8)S_UPPER_LIMIT * ((float8)1.0f - inRand);
	float8 K = (float8)K_LOWER_LIMIT * inRand + (float8)K_UPPER_LIMIT * ((float8)1.0f - inRand);
	float8 T = (float8)T_LOWER_LIMIT * inRand + (float8)T_UPPER_LIMIT * ((float8)1.0f - inRand);
	float8 R = (float8)R_LOWER_LIMIT * inRand + (float8)R_UPPER_LIMIT * ((float8)1.0f - inRand);
	float8 sigmaVal = (float8)SIGMA_LOWER_LIMIT * inRand + (float8)SIGMA_UPPER_LIMIT * ((float8)1.0f - inRand);

	sigmaSqrtT = sigmaVal * sqrt(T);
	d1 = (log(S/K) + (R + sigmaVal * sigmaVal / two)* T)/ sigmaSqrtT;
	d2 = d1 - sigmaSqrtT;

	KexpMinusRT = K * exp(-R * T);
	phi8(d1, &phiD1), phi8(d2, &phiD2);
	vstore8(S * phiD1 - KexpMinusRT * phiD2, 0, &(call[yPos * width + xPos + 0]));
	phi8(-d1, &phiD1), phi8(-d2, &phiD2);
	vstore8(KexpMinusRT * phiD2 - S * phiD1, 0, &(put[yPos * width + xPos + 0]));

}

__kernel void black_scholes_inter_16_step_3(const __global float *randArray, \
             int width, __global float *call, __global float *put){
	float16 d1, d2;
	float16 phiD1, phiD2;
	float16 sigmaSqrtT;
	float16 KexpMinusRT;
    
	size_t xPos = get_global_id(0) * VF16;
	size_t yPos = get_global_id(1); 

	float16 two = (float16)2.0f;
	float16 inRand = vload16(0, &(randArray[yPos * width + xPos + 0]));
	float16 S = (float16)S_LOWER_LIMIT * inRand + (float16)S_UPPER_LIMIT * ((float16)1.0f - inRand);
	float16 K = (float16)K_LOWER_LIMIT * inRand + (float16)K_UPPER_LIMIT * ((float16)1.0f - inRand);
	float16 T = (float16)T_LOWER_LIMIT * inRand + (float16)T_UPPER_LIMIT * ((float16)1.0f - inRand);
	float16 R = (float16)R_LOWER_LIMIT * inRand + (float16)R_UPPER_LIMIT * ((float16)1.0f - inRand);
	float16 sigmaVal = (float16)SIGMA_LOWER_LIMIT * inRand + (float16)SIGMA_UPPER_LIMIT * ((float16)1.0f - inRand);

	sigmaSqrtT = sigmaVal * sqrt(T);
	d1 = (log(S/K) + (R + sigmaVal * sigmaVal / two)* T)/ sigmaSqrtT;
	d2 = d1 - sigmaSqrtT;

	KexpMinusRT = K * exp(-R * T);
	phi16(d1, &phiD1), phi16(d2, &phiD2);
	vstore16(S * phiD1 - KexpMinusRT * phiD2, 0, &(call[yPos * width + xPos + 0]));
	phi16(-d1, &phiD1), phi16(-d2, &phiD2);
	vstore16(KexpMinusRT * phiD2 - S * phiD1, 0, &(put[yPos * width + xPos + 0]));
}



