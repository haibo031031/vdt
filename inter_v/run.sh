#!/bin/bash

platforms=(k20 mic snb tahiti)
pfconfig=('-p 0 -t gpu -d 0' '-p 0 -t acc -d 0' '-p 0 -t cpu -d 0' '-p 0 -t gpu -d 0')
modules=('opencl-nvidia/5.5' 'opencl-intel/3.0-mic' 'opencl-intel/3.0' 'opencl-amd/2.8')
workDirs=('1_mm_gpu' '2_image_convolution' '3_black_scholes' '4_sor' '1_mm_gpu_hint' '2_image_convolution_hint' '3_black_scholes_hint' '4_sor_hint')
resAlloc=("'-l fat,gpu=K20'" "'-l fat,accel=XeonPhi'" "'-l fat,m_type=sandybridge'" "'-l fat,gpu=HD7970'")


for workDir in "${workDirs[@]}"
do
	cd ${workDir}
	rm *.dat
	let "cnt = 0"
	#for pf in "${platforms[@]}"
	#do
		module load ${modules[${cnt}]}

		make clean foo=${platforms[$cnt]}; make foo=${platforms[$cnt]}
		prun -np 1 -native '-l fat,gpu=K20' -t 2880:00 ./app.${platforms[$cnt]} ${pfconfig[$cnt]}

		module unload ${modules[${cnt}]}
		cnt=$(($cnt+1))
	#done	
	#for pf in "${platforms[@]}"
	#do
		module load ${modules[${cnt}]}

		make clean foo=${platforms[$cnt]}; make foo=${platforms[$cnt]}
		prun -np 1 -native '-l fat,accel=XeonPhi' -t 2880:00 ./app.${platforms[$cnt]} ${pfconfig[$cnt]}

		module unload ${modules[${cnt}]}
		cnt=$(($cnt+1))
	#done
	#for pf in "${platforms[@]}"
	#do
		module load ${modules[${cnt}]}

		make clean foo=${platforms[$cnt]}; make foo=${platforms[$cnt]}
		prun -np 1 -native '-l fat,m_type=sandybridge' -t 2880:00 ./app.${platforms[$cnt]} ${pfconfig[$cnt]}

		module unload ${modules[${cnt}]}
		cnt=$(($cnt+1))
	#done
	#for pf in "${platforms[@]}"
	#do
		module load ${modules[${cnt}]}

		make clean foo=${platforms[$cnt]}; make foo=${platforms[$cnt]}
		prun -np 1 -native '-l fat,gpu=HD7970' -t 2880:00 ./app.${platforms[$cnt]} ${pfconfig[$cnt]}

		module unload ${modules[${cnt}]}
		cnt=$(($cnt+1))
	#done	
	cd ../
done