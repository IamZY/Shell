#!/bin/env bash



array=(2 3 3 4)

# 数组长度
echo ${#array[*]}
# 数组下标
echo ${!array[*]}
# 数组
echo ${array[*]}



for i in ${!array[*]}
 do
        echo ${array[$i]}
 done
