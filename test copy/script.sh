#!/bin/bash

# It takes into all .txt files that start with "Simulations" in their file name and extracts the month, and takes the first 7 digits as the year and file# assuming that is the structure. Please be aware that if the first 7 digits are not the year and the 3 digit file number, then the script might not work as intended and will need to be modified.

# Remove the "#" on line 70 to run the code, otherwise it only prints out what it does

for file in *.txt

do 

if [[ $file == *"Simulations"* ]]
then

if [[ $file == *"January"* ]]
then
  month=01;
fi
if [[ $file == *"February"* ]]
then
  month=02;
fi
if [[ $file == *"March"* ]]
then
  month=03;
fi
if [[ $file == *"April"* ]]
then
  month=04;
fi
if [[ $file == *"May"* ]]
then
  month=05;
fi
if [[ $file == *"June"* ]]
then
  month=06;
fi
if [[ $file == *"July"* ]]
then
  month=07;
fi
if [[ $file == *"August"* ]]
then
  month=08;
fi
if [[ $file == *"September"* ]]
then
  month=09;
fi
if [[ $file == *"October"* ]]
then
  month=10;
fi
if [[ $file == *"November"* ]]
then
  month=11;
fi
if [[ $file == *"December"* ]]
then
  month=12;
fi

numbers=${file//[^0-9]/} 

of=${numbers:4:3}

year=${numbers:0:4}

echo mv "$file" "$year-$month-$of.txt" 
# Delete the "#" symbol below to execute the script properly, otherwise it only prints out as a test
#mv "$file" "$year-$month-$of.txt" 

fi
done