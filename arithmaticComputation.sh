#!/bin/bash -x

echo "Enter the three inputs :: "
read a b c

declare -A myDict

result=$(($a+$b*$c))
result1=$(($a*$b+$c))
result2=$(($c+$a/$b))
result3=$(($a%$b+$c))

myDict[1]=$result
myDict[2]=$result1
myDict[3]=$result2
myDict[4]=$result3

echo ${myDict[@]}
