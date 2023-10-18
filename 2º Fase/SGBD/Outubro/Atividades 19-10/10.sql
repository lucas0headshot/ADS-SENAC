SELECT
	produtos.cd_produto,
    produtos.nm_produto,
    
    SUM(pedido_itens.qt_produto) AS qtd_vendida
    
FROM produtos

LEFT JOIN pedido_itens
	ON pedido_itens.cd_produto = produtos.cd_produto

GROUP BY
	produtos.cd_produto

ORDER BY
	qtd_vendida DESC;