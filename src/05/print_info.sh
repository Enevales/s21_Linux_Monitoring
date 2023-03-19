#!/bin/bash
start=$(date +%s%N)
dir=$1

NUM_DIR=$(find $dir -mindepth 1 -type d | wc -l)
TOP_DIR=$(du -h $dir | sort -hr | head -6 | awk '{if (NR>1){i++; print NR-1 " - " $1 " " $2}}')
NUM_FILES=$(find $dir -type f | wc -l)
CONF_FILES=$(find $dir -type f | grep -c .conf)
TEXT_FILES=$(find $dir -type f | grep -c .txt)
EXEC_FILES=$(find $dir -executable -type f | wc -l)
LOG_FILES=$(find $dir -type f | grep -c .log)
ARC_FILES=$(find $dir -type f  | grep -c -e .tar -e .gz -e .zip -e .lz -e .rar)
SYMB_FILES=$(find $dir -type l | wc -l)
TOP_FILES=$(find $dir -type f -printf "%s %p\n" | sort -hr  | head -10 | awk -F '.' '{print $0 " " $NF}' | awk '{print NR "-" $2 ", " $3 ", " $1 " kb"}')
TOP_EXEC=$(find $dir -type f -exec md5sum {} \; -printf "%s %p\n" | paste - -| sort -hr | head -10 | grep -e .out -e .exe -e .sh | awk '{print NR " - " $2", "$3" kb, " $1}' )

printf "Total number of folders (including all nested ones) = %s \n" "$NUM_DIR"
printf "TOP 5 folders of maximum size arranged in descending order (path and size): %s \n" "$TOP_DIR"
printf "Total number of files = %s \n" "$NUM_FILES"
printf "Number of:\nConfiguration files = %s \nText files = %s \n" "$CONF_FILES" "$TEXT_FILES"
printf "Executable files = %s\nLog files = %s \n" "$EXEC_FILES" "$LOG_FILES"
printf "Archive files = %s\nSymbolic links = %s \n" "$ARC_FILES" "$SYMB_FILES"
printf "TOP 10 files of maximum size arranged in descending order (path, size and type): \n%s \n" "$TOP_FILES"
printf "TOP 10 executable files of the maximum size arranged in descending order: %s \n" "$TOP_EXEC"
end=$(date +%s%N)
runtime=$(echo "$end-$start" | bc -l | awk '{print $0/1000000000}')
printf "Script execution time (in seconds) = %s s\n" "$runtime"

