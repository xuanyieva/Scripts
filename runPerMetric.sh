#!/bin/sh
#run java in a batch, this is to use MOEAFramework to calculate the performance metrics.

for ((SEED=1; SEED<=50; SEED++))
do
	FILENAME="./runtime/Runtime_dv_${SEED}.set"
	FILENAME1="./runtime/MetricOutput.seed${SEED}.metrics"
	
	java -Djava.ext.dirs=lib -Xmx512m -classpath MOEAFramework-1.17-Executable.jar org.moeaframework.analysis.sensitivity.ResultFileEvaluator  --reference myProblem.reference  --input ${FILENAME}  --dimension 4  --output ${FILENAME1}
	
done


