#!/bin/bash
while read GENEID; do
	TEST=$(echo $GENEID | cut -c 1-4)
	if [ "$TEST" = "AFLA" ]; then
		echo $GENEID >> SMURF_ids_parsed.txt
	fi
done <SMURF_ids.txt
