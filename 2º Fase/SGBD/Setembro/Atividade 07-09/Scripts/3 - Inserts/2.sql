INSERT INTO
	clientes
		(cd_cliente, nm_cliente, nm_cidade, cd_representante)
			VALUES((SELECT MAX(cd_cliente) + 1 FROM clientes cli), 'Mazon', 'Criciúma', 1874);