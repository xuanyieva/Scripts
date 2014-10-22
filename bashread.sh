#!/bin/sh

#read the runtime_*.txt, only store the # and objectives.

for ((SEED=1; SEED<=50; SEED++))
do
	FILENAME="Runtime_${SEED}.txt"
	FILENAME1="Runtime_dv_${SEED}.set"


	
	awk 'BEGIN {FS=" "}; /^#/ {print $0}; /^[-]?[0-9]/ {printf("%s %s %s %s\n",$101,$102,$103,$104)}' ${FILENAME} >${FILENAME1}
	
done
