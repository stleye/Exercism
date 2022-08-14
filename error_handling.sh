#!/bin/bash

main () {
	if [ $# -eq 1 ]; then
    	main_result="Hello, ${1}"
		return 0
	else 
		return 1
	fi
}

main "$@"

if [ $? -eq 0 ]; then
	echo "$main_result"
	exit 0
else 
	echo "Usage: error_handling.sh <person>"
	exit 1
fi
