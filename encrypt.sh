#!/bin/bash

if [[ -d $@ ]]; then
	tar cz $@ | openssl aes-256-cbc -out $@.enc
else
	openssl aes-256-cbc -in $@ -out $@.enc
fi

rm -rf $@
