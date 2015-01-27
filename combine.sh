#!/bin/bash

#########################################################################
# This file creates a combined tsv file from the individual country files
#########################################################################

OUTPUT_FILE="output/combined_gapMinder.tsv"  #tsv: tab separated value

echo Building combined country data file
cat data/clean/country.cc.txt > $OUTPUT_FILE

mv -v data/clean/country.cc.txt data/clean/country.cc.processed #move the country.cc.txt out of the variable "output_file:
sleep 2

cat data/clean/*.cc.txt 
sleep 2
cat data/clean/*.cc.txt >> $OUTPUT_FILE  #stick it on the bottom of the output file

mv -v data/clean/country.cc.processed data/clean/country.cc.txt #put the file back to where it come from.

