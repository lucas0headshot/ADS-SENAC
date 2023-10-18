SELECT
	produtos.cd_produto,
    produtos.nm_produto,
    
    COUNT(pedidos.nr_pedido) AS qtd_pedidos,
    
    SUM(produtos.ps_unitario) AS ps_total,
    
    SUM(pedido_itens.vl_item) AS vl_total

FROM produtos

LEFT JOIN pedido_itens
	ON pedido_itens.cd_produto = produtos.cd_produto

LEFT JOIN pedidos
	ON pedidos.nr_pedido = pedido_itens.nr_pedido

GROUP BY
	produtos.cd_produto
    
ORDER BY
	qtd_pedidos DESC;