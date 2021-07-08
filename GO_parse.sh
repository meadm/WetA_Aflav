#!/bin/bash
#start the while loop, read in each line of the domain id file, and define a variable "IDS" that is each line of the domain id file
while read GOID; do
#paste command converts the column of text to a row of text that is separated by a tab - make sure the spaces between the quotes are still a tab and not simple spaces
#sed command adds the GO id to the front of every line - make sure the spaces after the variable are a tab and not regular spaces
	grep "$GOID" Aflav_GO.txt | cut -f1,1 | sort -u | paste -sd"	" | sed "s/^/$GOID	/" > $GOID.ids2
done < GO_ids.txt
cat *ids2 > Aflav_GO_parsed.txt
