#!/bin/bash

d=`date +%F`
dir=/data/logs/diskLog

if [ ! -d $dir ];then
	mkdir -p $dir
fi

df -h > $dir/$d.log
#find $dir/ -mtime +365 |xargs rm

