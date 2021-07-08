#!/bin/bash
#start the while loop, read in each line of the GO id file, and define a variable "GOID" that is each line of the GO id file
while read GOTERM; do
#print the GO term so I know which one it's currently working on	
	echo $GOTERM
#pull all genes with these GO terms from the FungiDB A. flavus GO annotation file. Only put unique genes in the id file
#genes can be annotated with multiple terms and will show up multiple times in the ID file unless I sort for uniques
        grep -f $GOTERM.txt /Users/MattMead/Documents/Work/Resources/Aflav/Aflav_Amigo_GO3.txt | cut -f1,1 | sort -u > $GOTERM\_AmiGO_ids.txt
#pull the expression data for genes with the GO terms of interest
#significant.txt is just a tab delimited file of the filtered expression data      
        grep -f $GOTERM\_AmiGO_ids.txt significant.txt > $GOTERM\_AmiGO_sig.txt
#this file contains a column of GO term pseudonyms that correspond to the child files
        done <goterms.txt
