SELECT
	pedido_itens.nr_pedido,
    SUM(pedido_itens.vl_item) AS vl_total,
    
    SUM(produtos.ps_unitario) AS ps_total,
    
    COUNT(pedido_itens.nr_pedido) AS qtd_itens

FROM pedidos

LEFT JOIN pedido_itens
	ON pedido_itens.nr_pedido = pedidos.nr_pedido

LEFT JOIN produtos
	ON produtos.cd_produto = pedido_itens.cd_produto

WHERE
	pedidos.cd_cliente = 63517

GROUP BY
	pedido_itens.nr_pedido
    
ORDER BY
	vl_total;