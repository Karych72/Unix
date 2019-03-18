#!/bin/bash

a=$(sed -n -e "1,$ { 
:oddline s/ /\n/g; :odd s/\n/ /m; t even ;p;N;s/.*\n//;b oddline ; 
:evenline s/ /\n/g; :even s/\n/ /m; t odd ; p;N;s/.*\n//;b evenline ; 
}" <<< "$1")
k="5"
trrr="!"
while [ $k != $trrr ]
	do
	res=$(sed -r 's/(.*)?(^|\s|,|\.|;)([a-zA-Z]*?)(\s|,|\.|;|$).*?/\3/' <<< "$a")
	#echo $res	
	a=$(sed -n -e "1,$ { 
	:oddline s/${res}/\n/g; :odd s/\n/!${res}!/m; t even ;p;N;s/.*\n//;b oddline ; 
	:evenline s/${res}/\n/g; :even s/\n/*${res}*/m; t odd ; p;N;s/.*\n//;b evenline ; 
	}" <<< "$a")
	k=$(sed -r 's/^(.).*?$/\1/' <<< "$a")
done
happy=$(sed "s/!//g" <<< "$a")
echo "$happy"
