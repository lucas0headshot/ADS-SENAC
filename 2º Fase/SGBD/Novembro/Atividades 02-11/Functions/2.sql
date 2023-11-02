DELIMITER $$
CREATE OR REPLACE FUNCTION `f_total_itens`(nr_pedido INT) RETURNS double
BEGIN
	DECLARE vl_total DOUBLE;
	
    SELECT
		SUM(vl_item) INTO vl_total
	FROM pedido_itens
    WHERE pedido_itens.nr_pedido = nr_pedido;

	RETURN vl_total;
END $$
DELIMITER ;



SELECT f_total_itens(590) AS vl_total_pedido;