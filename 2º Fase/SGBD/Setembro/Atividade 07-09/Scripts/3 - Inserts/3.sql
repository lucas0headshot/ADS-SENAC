-- Encontrar MAX nr_pedido
SELECT MAX(nr_pedido) 
	INTO @max_nr_pedido
		FROM pedidos;


-- Registrar pedido
INSERT INTO pedidos 
	(nr_pedido, cd_cliente, dt_emissao, id_situacao, dt_entrega)
		VALUES (@max_nr_pedido + 1, 990991, CURDATE(), 1, DATE_ADD(CURDATE(), INTERVAL 20 DAY));


-- Inserir os itens do pedido
	-- Produto 1880
	INSERT INTO pedido_itens 
		(nr_pedido, cd_produto, qt_produto, vl_unitario)
			VALUES (@max_nr_pedido + 1, 1880, 50, (SELECT vl_unitario FROM produtos WHERE cd_produto = 1880));

	-- Produto 4880
	INSERT INTO pedido_itens 
		(nr_pedido, cd_produto, qt_produto, vl_unitario)
			VALUES (@max_nr_pedido + 1, 4880, 50, (SELECT vl_unitario FROM produtos WHERE cd_produto = 4880));

	-- Produto 6300
	INSERT INTO pedido_itens 
		(nr_pedido, cd_produto, qt_produto, vl_unitario)
			VALUES (@max_nr_pedido + 1, 6300, 30, (SELECT vl_unitario FROM produtos WHERE cd_produto = 6300));


-- Calcular vl_pedido
UPDATE pedidos
	SET vl_pedido = (
		SELECT SUM(qt_produto * vl_unitario)
			FROM pedido_itens
				WHERE nr_pedido = @max_nr_pedido + 1
		)
		WHERE nr_pedido = @max_nr_pedido + 1;