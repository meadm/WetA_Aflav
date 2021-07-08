#!/bin/bash
while read ASPGD; do
	sed -i "s/$ASPGD.*//" Aflav_Amigo_GO3.txt
	done <AFL2T_no_RBBH.txt
sed -i '/^$/d' Aflav_Amigo_GO3.txt
