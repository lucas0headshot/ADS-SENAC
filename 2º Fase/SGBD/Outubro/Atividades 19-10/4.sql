SELECT
	cd_representante,
    COUNT(*) AS qtd_clientes

FROM clientes

GROUP BY
	cd_representante

ORDER BY
	qtd_clientes DESC;