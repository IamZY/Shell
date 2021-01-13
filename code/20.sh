#!/bin/bash

dir=/tmp/log_stat
t=`date +%d%H`
t1=`date +%H`
logdir=/data/log

[ -f $dir/$t.log ] && rm -f $dir/$t.log

if [ $t == "00" -o $t == "12" ]
then
	for f in `find $logdir/ -type f`
	do	
		> $f
	done
else
	for f in `find $logdir/ -type f`
	do
		size=`du -sh $f`
		echo $f $size >> 
	done
fi



