SELECT pro.cd_produto, pro.nm_produto,
		ped_item.qt_produto, ped_item.vl_unitario * ped_item.qt_produto AS valor
	FROM pedido_itens ped_item
	JOIN
		produtos pro ON ped_item.cd_produto = pro.cd_produto
	WHERE ped_item.nr_pedido = 33359;