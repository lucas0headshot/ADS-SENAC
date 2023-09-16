UPDATE pedido_itens
	SET vl_item = qt_produto * vl_unitario
		WHERE nr_pedido <> 0;