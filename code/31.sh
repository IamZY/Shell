#!/bin/bash
ip add |awk -F ': ' '$1 ~ "^[1-9]" {print $2}' > /tmp/eth.list
while :
do
    eths=`cat /tmp/eth.list |xargs`
    read -p "Please input a if name(The eths is `echo -e "\033[31m$eths\033[0m"`): " eth
    if [ -z "$eth" ]
    then
	echo "Please input a if name."
	continue
    fi
    if ! grep -qw "$eth" /tmp/eth.list
    then
	echo "The if name is error."
	continue
    else
	break
    fi
done

if_ip() 
{
    ip add show dev $1 |grep ' inet ' |awk '{print $2}'|awk -F '/' '{print $1}' >/tmp/$1.txt
    n=`wc -l /tmp/$1.txt|awk '{print $1}'`
    if [ $n -eq 0 ]
    then
	echo "There is no ip address on the eth."
    else
	echo "The ip addreess is:"
        for ip in `cat /tmp/$1.txt`
	do
	    echo -e "\033[33m$ip\033[0m"
	done
    fi
}

if_ip $eth

