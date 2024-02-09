#!/bin/bash

main () {
	if [ $(expr $1 % 3) -eq 0 ]; then
		result=$result"Pling"
	fi
	if [ $(expr $1 % 5) -eq 0 ]; then
		result=$result"Plang"
	fi
	if [ $(expr $1 % 7) -eq 0 ]; then
		result=$result"Plong"
	fi
	echo ${result:-$1}
}

main "$@"

