#!/bin/bash
is_nu()
{
	n=`echo $1 | sed 's/[0-9]//g'`
	if [ -n "$n" ]
	then
		echo "请输入正整数"
		exit
	fi
}
while :
do
if [ $# -ne 2 ]
then
	echo "必须输入两个参数"
	exit
else
	is_nu $1
	is_nu $2
	break
fi
done

big()
{
	if [ $1 -gt $2 ]
	then
		echo $1
	else
		echo $2
	fi
}


small() 
{
	if [ $1 -lt $2 ]
	then
		echo $1		
	else
		echo $2
	fi
}


add()
{
	sum=$[$1+$2]
	echo "$1+$2=$sum"
}

jian() 
{
	b=`big $1 $2`
	s=`small $1 $2`
	cha=$[$b-$s]
	echo "$b-$s=$cha"
}

cheng() 
{
	ji=$[$1*$2]
	echo "$1*$2=$ji"
}

chu()
{
	b=`big $1 $2`
        s=`small $1 $2`
	v=`echo "scale=2;$b/$s"|bc`
	echo "$b/$s=$v"
}

add $1 $2
jian $1 $2
cheng $1 $2
chu $1 $2
















