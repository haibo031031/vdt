#!/bin/bash

platforms=(tahiti)
pfconfig=('-p 0 -t gpu -d 0')
modules=('opencl-amd/2.8')
workDirs=('flops')


for workDir in "${workDirs[@]}"
do
	cd ${workDir}
	rm *.dat
	let "cnt = 0"
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
