#!/bin/bash
dataDir="data"
workDirs=('1_mm_a' '1_mm_b' '2_ic_a' '3_bs_a' '4_sor_a')
if [ -d "${dataDir}" ]; then
	rm -r ${dataDir}
fi
mkdir ${dataDir}
for workDir in "${workDirs[@]}"
do
	cp ${workDir}/results.dat ./${dataDir}/${workDir}.dat
done
tar -zcvf data.tar.gz ./${dataDir}/
rm -r ${dataDir}
