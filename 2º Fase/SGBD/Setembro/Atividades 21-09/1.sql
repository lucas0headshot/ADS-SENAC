SELECT ped.nr_pedido,
		ped.dt_emissao,
		cli.nm_cliente
        
	FROM pedidos AS ped
    
    INNER JOIN clientes AS cli
		ON cli.cd_cliente = ped.cd_cliente
		
	ORDER BY cli.nm_cliente;