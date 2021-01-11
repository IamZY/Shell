#!/bin/bash

read -p "Please input a number: " n

n1=`echo $n|sed 's/[0-9]//g'`

if [ -n "$n1" ]
then
	echo "请输入一个数字1-4"
	exit
fi

case $n in 
    1)
	date
	;;
    2)
	ls
	;;
    3)
	who
	;;
    4)
	pwd
	;;
    *)
	echo "请输入1-4的数字"
	;;
esac
	
