#!/bin/bash

if [ $# -eq 0 ]
then 
	ls -l .
else
	for d in $@
	do
		echo "There are these directorys in $d:"
		find $d -type d
	done
fi


