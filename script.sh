#!/bin/bash

for file in *.txt

do
	echo "$file"
	temp=${file%of*}
	echo "$temp"
	numbers=${temp//[^0-9]}
	echo "$numbers"
	indices=`printf %03g $numbers`
	echo "$indices"
	echo "YYYY-MM-$indices.txt"

done