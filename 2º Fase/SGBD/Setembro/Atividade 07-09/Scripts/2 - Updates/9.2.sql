UPDATE pedidos AS ped
	SET vl_pedido = (
		SELECT SUM(ped_ite.vl_item)
			FROM pedido_itens AS ped_ite
				WHERE ped_ite.nr_pedido = ped.nr_pedido
    )
		WHERE ped.nr_pedido > 0;