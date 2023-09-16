INSERT INTO
	representantes
		(cd_representante, nm_representante)
			VALUES ((SELECT MAX(cd_representante) + 1 FROM representantes rep), 'Maria da Silva Representações');