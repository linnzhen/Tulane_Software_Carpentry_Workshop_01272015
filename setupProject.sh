#!/bin/bash

##########################################################
# This script will download the split gap minder zip file,
# unzip it, makes some directories, and backs up the data
# into an archive folder
##########################################################


echo Creating project directory structure #Print
sleep 2 #pause 2 seconds.
mkdir -v data code output data/archive #Generate 4 directories including 3 independent and 1 subdirectory

cd data

# Fetch the zip file
ZIP_FILE_URL="http://npk.io/1jHRK+"  #Setup 1 variable
ZIP_FILE_NAME="rawSplitCountries.zip" #Setup another variable

echo Downloading zipped data file from $ZIP_FILE_URL #printout the real url
sleep 2 #have a 2 second nap
curl -L $ZIP_FILE_URL -o $ZIP_FILE_NAME #download from internet, "L" follow any redirect, "o" output

echo Unzipping file. 
sleep 2 #take a 2 seconds nap
unzip $ZIP_FILE_NAME #unzip

echo Copying the zip file contents to the archive directory
sleep 2
cp -vr clean archive/ #copy verbosely recursively of clean folder into the archive folder

# Move back up a dir
cd ../

