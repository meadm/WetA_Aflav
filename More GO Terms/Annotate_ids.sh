#!/bin/bash
sed -e 's/^/id: /' ~/Documents/Work/Collaborations/Jae-Hyuk\ Yu/Updates/Fourth\ Update/New_GO_ids.txt > New_GO_ids2.txt
while read GOID; do
	grep -A 2 "$GOID" /Users/MattMead/Documents/Work/Resources/go.obo | tr '\n' '\t' | cut -d ' ' -f2- | sed 's/name: //' | sed 's/namespace: //' >> ~/Documents/Work/Collaborations/Jae-Hyuk\ Yu/Updates/Fourth\ Update/GO_ids_annotated.txt
	done <New_GO_ids2.txt
