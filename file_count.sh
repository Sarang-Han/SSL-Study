#!/bin/bash

regular=0; directory=0;

list=$(ls -l "$1")

for item in $list
do
first_char="${item:0:1}"

if [ "$first_char" = "-" ]
then
    ((regular++))
fi
if [ "$first_char" = "d" ]
then
    ((directory++))
fi
done

echo "regular files: $regular"
echo "directory files: $directory"

#실행 예시
# $./file_count ../
# regular files: 3
# directory files: 2