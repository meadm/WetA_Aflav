#!/bin/bash
while read SIG; do
	if grep -q "$SIG" ids.txt; then
#this is the symbol for "do nothing"	
		:
	else
		GREP=$(grep "$SIG" A_fumigatus_Af293_version_s03-m05-r07_features.gff)
		echo "$GREP" >> missing.txt
	fi
done <significant.txt
