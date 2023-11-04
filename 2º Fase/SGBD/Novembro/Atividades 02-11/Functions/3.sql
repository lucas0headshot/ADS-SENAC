DELIMITER $$
CREATE OR REPLACE FUNCTION `f_soma_pedidos`(dt_inicio_intervalo DATE, dt_fim_intervalo DATE) RETURNS double
BEGIN
	DECLARE vl_total DOUBLE;
	
    SELECT
		SUM(vl_item) INTO vl_total
    FROM pedido_itens
    LEFT JOIN pedidos
		ON pedido_itens.nr_pedido = pedidos.nr_pedido
    WHERE pedidos.dt_emissao BETWEEN dt_inicio_intervalo AND dt_fim_intervalo;
    
    
    RETURN vl_total;
END $$
DELIMITER ;



SELECT f_soma_pedidos('2010-09-02', '2023-12-31') AS vl_total_intervalo;