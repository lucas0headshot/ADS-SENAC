DELIMITER $$
CREATE OR REPLACE PROCEDURE p_dados_pedidos (IN nr_pedido INT)
BEGIN
	SELECT
		pedidos.nr_pedido,
        pedidos.dt_emissao,
        
        clientes.cd_cliente,
        clientes.nm_cliente,
        
        pedidos.vl_pedido,
        pedidos.dt_entrega
        
	FROM pedidos
    LEFT JOIN clientes
		ON clientes.cd_cliente = pedidos.cd_cliente
	WHERE pedidos.nr_pedido = nr_pedido;
END $$
DELIMITER ;



CALL p_dados_pedidos(590);