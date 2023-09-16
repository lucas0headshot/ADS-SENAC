UPDATE pedido_itens
	SET vl_unitario = (vl_unitario - (vl_unitario * 0.1))
		WHERE nr_pedido = 14884;