#!/bin/bash

export HOSTNAME=$(hostname)
export TIMEZONE=$(timedatectl | grep 'Time zone')
export USER=$(whoami)
export OS=$(cat /etc/issue)
export DATE=$(date +"%d %b %Y %H:%M:%S")
export UPTIME=$(uptime -p)
export UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
export IP=$(hostname -I | awk '{print $1}')
export MASK=$(ip a | grep inet | grep brd | awk '{print $4}')
export GATEWAY=$(ip -4 route show default | awk '{print $3}')

export RAM_TOTAL=$(vmstat -s | grep 'total memory' | awk '{printf "%.3f Gb", $1*1e-6}')
export RAM_USED=$(vmstat -s | grep 'used memory' | awk '{printf "%.3f Gb", $1*1e-6}')
export RAM_FREE=$(vmstat -s | grep 'free memory' | awk '{printf "%.3f Gb", $1*1e-6}') 

export SPACE_ROOT=$(df -hT | grep "ext4" | head -1 | awk '{ printf $3 }' | sed 's/[^0-9.]*//g' | awk '{printf "%.3f MB", $1*1024}')
export SPACE_ROOT_USED=$(df -hT | grep "ext4" | head -1 | awk '{ printf $4 }' | sed 's/[^0-9.]*//g' | awk '{printf "%.3f MB", $1*1024}')
export SPACE_ROOT_FREE=$(df -hT | grep "ext4" | head -1 | awk '{ printf $5 }' | sed 's/[^0-9.]*//g' | awk '{printf "%.3f MB", $1*1024}')

bash print_info.sh


