#!/bin/bash


basedir=/home/shell/20210113
t=`date +%Y%m%d%H%M`

find $basedir/ -type f -mmin -5 > /tmp/file.list
n=`wc -l /tmp/file.list|awk '{print $1}'`

if [ $n -gt 0 ]
then
	mv /tmp/file.list /tmp/$t.list
fi



