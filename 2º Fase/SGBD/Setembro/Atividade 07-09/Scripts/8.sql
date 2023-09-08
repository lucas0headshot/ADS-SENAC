SELECT ped.nr_pedido, ped.dt_emissao, ped.cd_cliente,
		cli.nm_cliente
    FROM pedidos ped
    INNER JOIN
		clientes cli ON ped.cd_cliente = cli.cd_cliente
    WHERE cli.cd_representante = 124;