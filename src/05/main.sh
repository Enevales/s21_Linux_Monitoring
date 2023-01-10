#!/bin/bash

DIR=$1

if [[ -d "$DIR" || "$DIR" == "" ]] ; then
   echo OK! 
   bash print_info.sh "$DIR"
else
   echo "$DIR directory does not exist."
fi
