#!/bin/bash


for i in `seq 1 100`:
do
	j=$[$i%3]
	if [ $j -eq 0 ]
	then
		echo $i
	fi
done
