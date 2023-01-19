#!/bin/bash
if [[ $# -ne 1 ]]; then 
	echo "Has d'introduir un paràmetre"
elif [[ -e $1 ]]; then
	echo "Un fitxer amb el nom $1 ja existeix"
else
	mkdir $1
	mkdir $1/Q1
	mkdir $1/Q2
	mkdir $1/Q3
fi