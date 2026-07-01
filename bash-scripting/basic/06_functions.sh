#!/bin/bash

<< comment
function
comment

function hello() {
  read -p "Enter your name: " name


  if [[ $name == $1 ]];
  then
    echo "You are my friend"

  elif [[ $name == $2 ]];
  then
    echo "You are my brother"
  fi
}

hello "Navneet" "Amrit"

