#!/bin/bash

column1=$1
column2=$2

black_f="\e[1;30m"
red_f="\e[1;31m"
green_f="\e[1;32m"
yellow_f="\e[1;33m"
blue_f="\e[1;34m"
purple_f="\e[1;35m"
white_f="\e[1;37m"

black_b="\e[1;40m"
red_b="\e[1;41m"
green_b="\e[1;42m"
yellow_b="\e[1;43m"
blue_b="\e[1;44m"
purple_b="\e[1;45m"
white_b="\e[1;47m"

reset_colours="\e[0m"

function background_colour()
{
    colour=$1
    if [[ $colour == 1 ]] ; then
        echo $white_b
    elif [[ $colour == 2 ]] ; then
        echo $red_b
    elif [[ $colour == 3 ]] ; then
        echo $green_b
    elif [[ $colour == 4 ]] ; then
        echo $blue_b
    elif [[ $colour == 5 ]] ; then
        echo $purple_b
    elif [[ $colour == 6 ]] ; then
        echo $black_b
    fi
}

function font_colour()
{
    colour=$1
    if [[ $colour == 1 ]] ; then
        echo $white_f
    elif [[ $colour == 2 ]] ; then
        echo $red_f
    elif [[ $colour == 3 ]] ; then
        echo $green_f
    elif [[ $colour == 4 ]] ; then
        echo $blue_f
    elif [[ $colour == 5 ]] ; then
        echo $purple_f
    elif [[ $colour == 6 ]] ; then
        echo $black_f
    fi
}

function column1_colours()
{
    echo $(background_colour $colour1)
    echo $(font_colour $colour2)
}

function column2_colours()
{
    echo $(background_colour $colour3)
    echo $(font_colour $colour4)
}


echo -e $(column1_colours) $column1 $(column2_colours) $column2 $reset_colours


