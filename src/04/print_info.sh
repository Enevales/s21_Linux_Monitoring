#!/bin/bash

bash colour.sh "HOSTNAME = " "$HOSTNAME"
bash colour.sh  "TIMEZONE = " "$TIMEZONE"
bash colour.sh  "USER = " "$USER"
bash colour.sh  "OS = " "$OS"
bash colour.sh  "DATE = " "$DATE"
bash colour.sh  "UPTIME = " "$UPTIME"
bash colour.sh  "UPTIME_SEC = " "$UPTIME_SEC"
bash colour.sh  "IP = " "$IP"
bash colour.sh  "MASK = " "$MASK"
bash colour.sh  "GATEWAY = " "$GATEWAY"
bash colour.sh  "RAM_TOTAL = " "$RAM_TOTAL"
bash colour.sh  "RAM_USED = " "$RAM_USED"
bash colour.sh  "RAM_FREE = " "$RAM_FREE"
bash colour.sh  "SPACE_ROOT = " "$SPACE_ROOT"
bash colour.sh  "SPACE_ROOT_USED = " "$SPACE_ROOT_USED"
bash colour.sh "SPACE_ROOT_FREE = " "$SPACE_ROOT_FREE"

declare -a colour_name=("nul" "white" "red" "green" "blue" "purple" "black")

#for i in 1 2 3 4; do
#	if [[ $[colour$i] == $[default_colour$i] ]]; then
#		echo "Column $i background = default $[colour$i] (${colour_name[colour$i]})"
#	else
#		echo "Column $i background = $[colour$i] (${colour_name[colour$i]})"
#	fi
#done

echo -e '\n'

if [[ $[colour1] == $[default_colour1] ]]; then
	echo "Column 1 background = default $[colour1] (${colour_name[colour1]})"
else
	echo "Column 1 background = $[colour1] (${colour_name[colour1]})"
fi

if [[ $[colour2] == $[default_colour2] ]]; then
	echo "Column 1 font = default $[colour2] (${colour_name[colour2]})"
else
	echo "Column 1 font = $[colour2] (${colour_name[colour2]})"
fi

if [[ $[colour3] == $[default_colour3] ]]; then
	echo "Column 2 background = default $[colour3] (${colour_name[colour3]})"
else
	echo "Column 2 background = $[colour3] (${colour_name[colour3]})"
fi

if [[ $[colour4] == $[default_colour4] ]]; then
	echo "Column 2 font = default $[colour4] (${colour_name[colour4]})"
else
	echo "Column 2 font = $[colour4] (${colour_name[colour4]})"
fi


