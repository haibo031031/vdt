#!/bin/bash

platforms=(gtx280)
pfconfig=('-p 0 -t gpu -d 0')
workDirs=('3_bs_a')


for workDir in "${workDirs[@]}"
do
	cd ${workDir}
	rm *.dat
	let "cnt = 0"

		make clean foo=${platforms[$cnt]}; make foo=${platforms[$cnt]}
		./app.${platforms[$cnt]} ${pfconfig[$cnt]}

		cnt=$(($cnt+1))
	cd ../
done
