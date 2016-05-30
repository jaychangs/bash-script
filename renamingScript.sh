#!/bin/bash



#April 11, 2016

#This script loops through sub-directories, renames files according to YYYY-MM-XXX.ext (where XXX is the original 
# n-digit file index and .ext is the extension type) and then moves them to a new, external folder 
#The sub-directories have the form "August 2, 2015" etc and the files contained therein have the form "Last Import - XXX of 823.txt"

#
# UNSOLVED PROBLEM
# some filenames contain 3 digit indices, some 2 digits, some just 1. 
#I don't know how to distinguish between these. 
#So right now the code is written assuming that 1-digit, 2-digit, and 3-digit files 
#are stored in different parent directories.
#

##################
# Set parameters #
##################
extension=txt
repository=/c/Users/carol/Desktop/RenamedFiles/
parentDirectory=/c/Users/carol/Desktop/TestFolder/
#number of digits in the original index
numberDigits=3

echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %%"                                                                                    "%%
echo %%"                                                                                    "%%
echo %%"                                                                                    "%%
echo %%"                                                                                    "%%
echo %%"                         "New Execution"                                              "%%
echo %%"                                                                                    "%%
echo %%"                                                                                    "%%
echo %%"                                                                                    "%%
echo %%"                                                                                    "%%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#Create index type
if [[ $numberDigits == 3 ]]

then
  
  Xs="";

fi

if [[ $numberDigits == 2 ]]

then
  
  Xs="0";

fi

if [[ $numberDigits == 1 ]]

then
  
  Xs="00";

fi


#Make a repository for renamed files
mkdir $repository


#Move to parent directory
cd $parentDirectory

#begin directory loop
for directory in */
do



#ASSIGN YEAR
if [[ $directory == *"2014"* ]]

then
  
  year=2014;

fi

if [[ $directory == *"2015"* ]]

then
  
  year=2015;

fi

if [[ $directory == *"2016"* ]]

then
  
  year=2016;

fi


#ASSIGN MONTH






if [[ $directory == *"January"* ]]

then
  
  month=01;

fi

if [[ $directory == *"February"* ]]

then

  month=02;

fi

if [[ $directory == *"March"* ]]

then
  month=03;

fi

if [[ $directory == *"April"* ]]

then

  month=04;

fi

if [[ $directory == *"May"* ]]

then

  month=05;

fi

if [[ $directory == *"June"* ]]

then

  month=06;

fi

if [[ $directory == *"July"* ]]

then

  month=07;

fi

if [[ $directory == *"August"* ]]

then

  month=08;

fi

if [[ $directory == *"September"* ]]

then

  month=09;

fi

if [[ $directory == *"October"* ]]

then

  month=10;

fi

if [[ $directory == *"November"* ]]

then

  month=11;

fi

if [[ $directory == *"December"* ]]

then

  month=12;

fi



#move to directory
cd "$directory"
echo Renaming Loop - now in directory
pwd

#begin rename loop
for file in *.$extension
do
numbers=${file//[^0-9]/} 


of=${numbers:0:$numberDigits}


#echo mv "$file" "$year-$month-$Xs$of.$extension" 

mv "$file" "$year-$month-$Xs$of.$extension" 


done
# end rename loop


# begin move loop
echo begin move
for allfiles in *.$extension
do
#echo mv $allfiles $repository$allfiles 
mv $allfiles $repository$allfiles
done
#end move loop

#return to parent Directory
cd $parentDirectory

done

#end directory loop

#
# check your output
#
#move to repository  
cd $repository
echo listing contents of $repository
ls
