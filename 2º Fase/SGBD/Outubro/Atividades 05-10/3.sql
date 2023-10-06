SELECT
	clientes.nm_cliente AS cliente,
    
    COUNT(pedidos.cd_cliente) AS qtd_pedido,
    SUM(pedidos.vl_pedido) AS vl_total

FROM pedidos

LEFT JOIN clientes
	ON clientes.cd_cliente = pedidos.cd_cliente
    
GROUP BY nm_cliente

ORDER BY qtd_pedido DESC;