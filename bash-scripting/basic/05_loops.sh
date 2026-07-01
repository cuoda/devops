#!/bin/bash

<< comment
$1 = first argument
$2 = start
$3 = end

for (( num=$2; num<=$3; num++ ))
do
  mkdir "$1$num"
done

comment



<< comment
while loop
comment

num=0

while [[ $num -le 5 ]]
do
  echo $num
  num=$((num+1))
done

num1=2

while (( $num1%2 == 0 && $num1 <= 10 ))
do
  echo $num1
  num1=$((num1+2))
done
