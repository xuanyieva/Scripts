#!/bin/sh
#This is to change all the upper cases in the filename to the lower cases.



for file in `ls | grep '[a-z]'`
do
str=`echo $file|tr 'a-z' 'A-Z'`
mv $file $str
done