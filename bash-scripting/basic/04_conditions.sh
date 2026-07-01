#!/bin/bash

read -p "Enter your age: " age

if [[ $age == "19" ]];
then
  echo "You are 19"
elif [[ $age -ge 20 ]];
then
  echo "You are $age"
else
  echo "You are not 19"
fi

