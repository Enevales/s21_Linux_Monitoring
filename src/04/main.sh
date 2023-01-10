#!/bin/bash

export default_colour1=4
export default_colour2=1
export default_colour3=4
export default_colour4=1

if [ $# != 0 ]; then
    echo "Wrong number of parameters"
    exit 1
elif ! [[ -f "colour_map.conf"  ]] ; then
    echo "colour_map.conf file doesn't exist"
    exit 1
else
    source colour_map.conf
    
    export colour1=$column1_background
    export colour2=$column1_font_color
    export colour3=$column2_background
    export colour4=$column2_font_color
    
fi

function set_default_colours()
{
    colour1=$default_colour1
    colour2=$default_colour2
    colour3=$default_colour3
    colour4=$default_colour4
}

for i in 1 2 3 4 ; do
	if [[ $[colour$i] < 1 || $[colour$i]  > 6 ]] ; then
		echo $[colour$i] ": Wrong parameter. Default colour applied"
		let colour$i=$[default_colour$i]
	fi	
done

if [[ $colour1 == $colour2 || $colour3 == $colour4 ]] ; then
	echo "The font and background colours are matching! Default colors applied."
	set_default_colours
fi

bash get_info.sh

