SELECT
	pedidos.dt_emissao AS dia,
    
	SUM(pedido_itens.vl_item) AS vl_total

FROM pedidos

LEFT JOIN pedido_itens
	ON pedido_itens.nr_pedido = pedidos.nr_pedido

GROUP BY
	pedidos.dt_emissao

ORDER BY
	pedidos.dt_emissao DESC;
    
 
 
SELECT
	pedidos.dt_emissao AS dia,
	SUM(pedido_itens.vl_item) AS vl_total

FROM pedidos

LEFT JOIN pedido_itens
	ON pedido_itens.nr_pedido = pedidos.nr_pedido

WHERE
	pedidos.dt_emissao > DATE('2010-09-03')

GROUP BY
	pedidos.dt_emissao

ORDER BY
	pedidos.dt_emissao DESC;