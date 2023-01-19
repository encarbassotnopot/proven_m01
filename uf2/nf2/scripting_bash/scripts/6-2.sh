#!/bin/bash
if [[ $# -ne 1 ]]; then 
	echo "Has d'introduir un paràmetre"
elif [[ -e $1 ]]; then
	echo "Un fitxer amb el nom $1 ja existeix"
else
	mkdir $1
	mkdir $1/{dam,daw,smx,asix,dawbio}

	for dir in $1/*; do
		mkdir $dir/c1
		mkdir $dir/c2
	done
fi