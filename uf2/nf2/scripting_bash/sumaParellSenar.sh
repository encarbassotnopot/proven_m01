#!/bin/bash
# Rep com a arguments un valor mínim i un de màxim.
# Suma per separat els nombres parells i senars compresos en aquest rang i mostra el resultat.
# Retorna 1 si no se li passen dos arguments, 2 si no són enters i 3 si el segon no és major que el primer.

if [[ $# -ne 2 ]]; then
	echo "Has d'introduir dos arguments."
	exit 1
fi

re='^[0-9]+$'

if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]] ; then
	echo "Els arguments han de ser enters."
	exit 2
fi

if ! [[ $1 -lt $2 ]]; then
	echo "El segon argument ha de ser més gran que el primer."
	exit 3
fi

parells=0
senars=0

for (( i = $1; i <= $2; i++ )) ; do
	if [[ $(( $i%2 )) -eq 0  ]] ; then
		parells=$((parells+i))
	else
		senars=$((senars+i))
	fi
done

echo "La suma del parells entre $1 i $2 és $parells i la dels senars $senars"
