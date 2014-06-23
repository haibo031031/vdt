vdt (vector data types)
===

If we code in the traditional CUDA-style (without any vectorization), only a small proportion of the computational potential, in theory, is tapped for these machines with SIMD units. Thus, vectorization (either manual vectorization or auto-vectorization module) is required. Manual vectorization (with vector data types) generates a large number of code variants and poses a challenge for performance portability. Auto-vectorizer is preferred in such a context when considering both performance and portability. 

In this project, we have provided a suite of benchmarks on investigating the use of vector data types in OpenCL.
