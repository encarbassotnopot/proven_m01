# Rep com a arguments un valor mínim i un de màxim.
# Suma per separat els nombres parells i senars compresos en aquest rang i mostra el resultat.
# Retorna 1 si no se li passen dos arguments, 2 si no són enters i 3 si el segon no és major que el primer.

Param(
	[Parameter(position=0)][int]$min,
	[Parameter(position=1)][int]$max
	)

if (!$min -or !$max) {
	Write-Error "Has d'introduir dos arguments."
} elseif ($max -le $min) {
	Write-Error "El segon argument ha de ser més gran que el primer"
} else {
	$parells = 0
	$senars = 0

	for ($i = $min; $i -le $max; $i++) {
		if ($i % 2 -eq 0) {
			$parells += $i
		} else {
			$senars += $i
		}
	}

	Write-Host "La suma del parells entre $min i $max és $parells i la dels senars $senars"
}