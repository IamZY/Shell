#!/bin/bash 

c="Bash also interprets a number of multi-character options."

n=`echo $c | awk -F'[ +-.]' '{print NF}'`

#echo $n

for ((i=1;i<$n;i++))
do
	l=`echo $c|awk -F '[ +.-]' -v j=$i '{print $j}'|wc -L`
	#echo $l
	if [ $l -lt 6 ]
	then
		echo echo $c|awk -F '[ +.-]' -v j=$i '{print $j}' 
	fi
done

