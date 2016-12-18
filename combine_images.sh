#!/bin/bash
for row in $(ls | cut -d',' -f1 | sort -u -n) #0 1 2 3 4
do
	convert $(ls ${row}* | sort -n) +append row${row}.png
done

convert $(ls row* | sort -n -r) -append final.png
convert final.png -resize 9600x9600  final_resized.png