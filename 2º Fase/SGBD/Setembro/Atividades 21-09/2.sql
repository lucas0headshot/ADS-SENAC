SELECT ped_ite.nr_pedido,
		pro.cd_produto,
        pro.nm_produto,
        ped_ite.vl_unitario,
        ped_ite.vl_item
        
	FROM pedido_itens ped_ite
		
	INNER JOIN produtos pro
        ON pro.cd_produto = ped_ite.cd_produto
		
	ORDER BY ped_ite.nr_pedido, ped_ite.cd_produto;