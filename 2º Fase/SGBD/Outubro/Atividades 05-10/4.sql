SELECT
	clientes.nm_cliente AS cliente,
    
    SUM(pedidos.vl_pedido) AS vl_total,
    COUNT(pedidos.nr_pedido) AS qtd_pedido
    
FROM clientes

LEFT JOIN pedidos
	ON clientes.cd_cliente = pedidos.cd_cliente
    
GROUP BY clientes.nm_cliente

ORDER BY vl_total DESC;