SELECT 
	clientes.nm_cidade AS cidade,
	COUNT(*) AS qtd_cliente
    
FROM clientes

GROUP BY cidade

ORDER BY qtd_cliente DESC;



SELECT
	*
    
FROM clientes

WHERE nm_cidade = 'SAO PAULO';