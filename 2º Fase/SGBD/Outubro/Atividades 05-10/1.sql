SELECT
	produtos.nm_produto AS produto,
    
    COUNT(*) AS qtd_vendida,
    SUM(pedido_itens.vl_item) AS vl_total

FROM pedido_itens

LEFT JOIN produtos
	ON produtos.cd_produto = pedido_itens.cd_produto
    
GROUP BY produtos.nm_produto;