#!/bin/sh

#read the files, and exact the number behind the certain string, ie. //ElaspeTime=0.5, we want the 0.5, so the = is set as separator between two fields.

for ((SEED=0; SEED<=1; SEED++))
do
	FILENAME="runtime_${SEED}.txt"
	FILENAME1="ElaspedTime_${SEED}.txt"


	
	awk 'BEGIN {FS="[ =]"}; {if($1~/ElapsedTime/){print $2}};/^#/ {print $0}' ${FILENAME} >${FILENAME1}
	
done