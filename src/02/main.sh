#!/bin/bash

if [ $# != 0 ]; then
    echo "Wrong number of parameters"
    exit 1
else
	echo 'Would you like to write data to a log file? ? (y/n)'
	read var

	if [[ $var == 'Y' || $var == 'y' ]] ; then
		filename=$(date +'%d_%m_%y_%H_%M_%S')'.status'
		bash get_info.sh > $filename
		cat $filename
	else
		bash get_info.sh
	fi
fi
