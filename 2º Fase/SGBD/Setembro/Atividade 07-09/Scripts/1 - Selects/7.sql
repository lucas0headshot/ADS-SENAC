SELECT * FROM produtos
	WHERE MONTH(dt_cadastro) BETWEEN 1 AND 6
		AND YEAR(dt_cadastro) = 2010;