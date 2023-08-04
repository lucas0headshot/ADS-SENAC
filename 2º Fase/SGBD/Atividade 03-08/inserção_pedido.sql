SELECT * FROM pedido;

INSERT INTO pedido
	(nr_pedido, id_cliente, dt_pedido, vl_pedido, ds_observacao)
		VALUES
			(1 + 2, 1, '2023-03-08', 100.00, 'Teste');