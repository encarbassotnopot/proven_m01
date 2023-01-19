#!/bin/bash
mkdir cicles
mkdir cicles/{dam,daw,smx,asix,dawbio}

for dir in cicles/*; do
	mkdir $dir/c1
	mkdir $dir/c2
done