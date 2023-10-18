SELECT
	cd_cliente,
    COUNT(*) AS qtd_pedidos

FROM pedidos

GROUP BY
	cd_cliente
    
ORDER BY
	qtd_pedidos DESC;