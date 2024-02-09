#!/bin/bash

function main() {
	result=""
	sentence=${1//[^a-zA-Z\']/ } #This is a find and replace - ${string//find/replace}   
	for P in $sentence
	do
		uppercased=$(echo ${P:0:1} | awk '{ print toupper($0) }')
		result=$result$uppercased
	done
	echo $result
}

main "$@"

