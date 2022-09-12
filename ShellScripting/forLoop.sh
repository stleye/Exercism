#!/bin/bash - 

for ELEMENT in 1 2 3 4 5 6 7 ; do 
	echo $ELEMENT
done

for NAME in $(cat fileWithNames.txt) ; do
	echo $NAME
done
