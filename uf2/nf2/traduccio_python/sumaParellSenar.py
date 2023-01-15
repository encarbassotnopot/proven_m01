#!/bin/python
# Rep com a arguments un valor mínim i un de màxim.
# Suma per separat els nombres parells i senars compresos en aquest rang i mostra el resultat.
# Retorna 1 si no se li passen dos arguments, 2 si no són enters i 3 si el segon no és major que el primer.
import sys

if len(sys.argv) != 3:
	print("Has d'introduir dos arguments.")
	sys.exit(1)

min = 0
max = 0

try:
	min = int(sys.argv[1])
	max = int(sys.argv[2])
except ValueError:
	print("Els arguments han de ser enters.")
	sys.exit(2)


if max < min:
	print("El segon argument ha de ser més gran que el primer.")
	sys.exit(3)

parells = 0
senars = 0

for i in range(min, max+1):
	if i % 2 == 0:
		parells += i
	else:
		senars += i

print("La suma del parells entre {} i {} és {} i la dels senars {}".format(min, max, parells, senars))
