#!/bin/bash
#start the while loop, read in each line of the domain id file, and define a variable "d" that is each line of the domain id file
while read LINE; do
#cut the line and save a variable as the gene name
    GENE=$(echo $LINE | cut -d " " -f1)
#read the line to standard output
#replace "; " with a new line
#add the gene id to the beginning of every line, except for the first
#append that final output to a new file    
	echo $LINE | sed -e $'s/\; /\\\n/g' | sed "1d; s/^/$GENE = /" >> Aflav_GO_uniprot_parsed3.txt
done <Aflav_GO_uniprot_parsed2.txt
