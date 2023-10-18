SELECT
	clientes.cd_cliente,
    clientes.nm_cliente,
    
    COUNT(pedidos.nr_pedido) AS qtd_pedidos,
    
    SUM(produtos.ps_unitario) AS ps_total,
    
    SUM(pedido_itens.vl_item) AS vl_total

FROM clientes

LEFT JOIN pedidos
	ON pedidos.cd_cliente = clientes.cd_cliente
    
LEFT JOIN pedido_itens
	ON pedido_itens.nr_pedido = pedidos.nr_pedido

LEFT JOIN produtos
	ON produtos.cd_produto = pedido_itens.cd_produto
    
GROUP BY
	clientes.cd_cliente
    
ORDER BY
	qtd_pedidos DESC;