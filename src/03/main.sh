#!/bin/bash

if [ $# != 4 ]; then
    echo "Wrong number of parameters"
    exit 1
else
	export colour1=$1
	export colour2=$2
	export colour3=$3
	export colour4=$4
fi

for i in 1 2 3 4 ; do
	if [[ $[colour$i] < 1 || $[colour$i]  > 6 ]] ; then
		echo $[colour$i] ": Wrong parameter"
		exit 1
	fi	
done

if [[ $colour1 == $colour2 || $colour3 == $colour4 ]] ; then
	echo "The font and background colours are matching!"
	exit 1
fi

bash get_info.sh

