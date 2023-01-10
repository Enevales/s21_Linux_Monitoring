#!/bin/bash

input=$1
reg='^[+-]?[0-9]+([.][0-9]+)?$'
error='Invalid input!'

if ! [[ $input =~ $reg  || $# != 1 ]] ; then
   echo $input
else
   echo $error
fi
