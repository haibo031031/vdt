#!/bin/bash

platforms=(c1060)
pfconfig=('-p 0 -t gpu -d 1')
#modules=('opencl-amd/2.8')
workDirs=('1_mm_a' '1_mm_b' '2_ic_a' '3_bs_a' '4_sor_a' '1_mm_a_hint' '1_mm_b_hint' '2_ic_a_hint' '3_bs_a_hint' '4_sor_a_hint')


for workDir in "${workDirs[@]}"
do
	cd ${workDir}
	rm *.dat
	let "cnt = 0"
	#for pf in "${platforms[@]}"
	#do
		#module load ${modules[${cnt}]}

		make clean foo=${platforms[$cnt]}; make foo=${platforms[$cnt]}
		./app.${platforms[$cnt]} ${pfconfig[$cnt]}

		#module unload ${modules[${cnt}]}
		cnt=$(($cnt+1))
	#done	
	cd ../
done
