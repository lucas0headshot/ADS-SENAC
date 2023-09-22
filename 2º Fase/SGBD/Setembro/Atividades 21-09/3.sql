SELECT ped.nr_pedido,
		ped.dt_emissao,
		ped_ite.cd_produto,
		ped_ite.vl_unitario,
		ped_ite.qt_produto,
		pro.nm_produto,
		pro.ps_unitario
	
    FROM pedidos AS ped
        
	INNER JOIN pedido_itens AS ped_ite 
		ON ped.nr_pedido = ped_ite.nr_pedido
	INNER JOIN produtos AS pro
		ON ped_ite.cd_produto = pro.cd_produto
	
    ORDER BY
		ped_ite.cd_produto;