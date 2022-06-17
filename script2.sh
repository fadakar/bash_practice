#!/bin/bash

read -p "Enter Number 1:" number1
read -p "Enter Number 2:" number2
mul= $[$number1*$number2]
div= $[$number1/$number2]
echo "zarb = ${mul}, taghsim ${div}"

