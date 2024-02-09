#!/bin/bash - 

function myFunction() {
	echo "hello world from a function"
	echo "first parameter is $0"
	echo "second parameter is $1"
	echo "third parameter is $2"
}

myFunction "hello" 3

