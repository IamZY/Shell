#!/bin/bash
sum=0
for n in `ps aux | grep -v 'COMMAND'|awk '{print $6}'`
do
	sum=$[$sum+$n]
done

echo $sum

