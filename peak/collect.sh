#!/bin/bash
dataDir="data"
workDirs=('bandwidth' 'flops')
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
