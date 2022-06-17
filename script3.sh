#!/bin/bash

mul=`echo "$1 * $2" | bc`
div=`echo "scale=2; $1 / $2" | bc`
echo "zarb = ${mul}, taghsim ${div}"

