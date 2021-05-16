#!/bin/bash -x

echo "Enter the three inputs :: "
read a b c

declare -A myDict
declare -a myArray

result=$(($a+$b*$c))
result1=$(($a*$b+$c))
result2=$(($c+$a/$b))
result3=$(($a%$b+$c))

myDict[1]=$result
myDict[2]=$result1
myDict[3]=$result2
myDict[4]=$result3

for ((i=0; i<=3; i++))
do 
    myArray[$i]=${myDict[$(($i+1))]}
done

<<<<<<< HEAD
echo old One Here : ${myArray[@]}

=======
#Descending order Here
>>>>>>> UC9-SortingResultsAscending
for ((i = 0; i<5; i++))
do  
    for((j = 0; j<5-i-1; j++))
    do
      
        if [ ${myArray[j]} -lt ${myArray[$((j+1))]} ]
        then
            # swap
            temp=${myArray[j]}
            myArray[$j]=${myArray[$((j+1))]}  
            myArray[$((j+1))]=$temp
        fi
    done
done

#Ascending order Here
for ((i = 0; i<5; i++))
do  
    for((j = 0; j<5-i-1; j++))
    do
      
        if [ ${myArray[j]} -gt ${myArray[$((j+1))]} ]
        then
            # swap
            temp=${myArray[j]}
            myArray[$j]=${myArray[$((j+1))]}  
            myArray[$((j+1))]=$temp
        fi
    done
done

echo Ascending order Here : ${myArray[@]}
