#!/bin/bash

main () {

    if [[ $# -lt 2 || $# -gt 2 ]]; then
        echo "Usage: hamming.sh <string1> <string2>"
        return 1
    fi

    if [[ "$1" == "$2" ]]; then
        echo "0"
    else 
	    if [ ${#1} -ne ${#2} ]; then  
            echo "strands must be of equal length"
            exit 1
        else
            result=0
            for (( i=0; i<${#1}; i++ )); do
                if [[ "${1:$i:1}" != "${2:$i:1}" ]]; then
                    result=$(expr $result + 1)
                fi
            done 
            echo $result
        fi
    fi 
}

main "$@"

