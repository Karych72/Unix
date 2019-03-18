#!/bin/bash

echo "$1"
readarray -t arr < "$1"

while read -r line;
	do
	res=$(sed -r -e 's/([a-z]*+:\/\/)([a-z0-9A-Z]*?:[0-9a-zA-Z]*?@)?([a-z0-9A-Z\.]*)\/.*/\3/' <<< "$line")
	bool=false
	for i in "${arr[@]}"
	do
		if [[ $res == "$i" ]]; then
			bool=true
		fi	
	done
	if [[ $bool == true ]]; then 
		echo "$line DENY"
	else
		echo "$line ALLOW"
	fi
done
