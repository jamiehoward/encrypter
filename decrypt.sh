#!/bin/bash
output=$(file $1 | grep "gzip")

if [[ $? != '' ]]; then
	openssl enc -aes-256-cbc -d -in $1 | tar xz 
else		
	openssl aes-256-cbc -d -in "$1" -out ${1%.*}
fi

rm $1
