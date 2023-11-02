DELIMITER $$
CREATE OR REPLACE FUNCTION `f_ultimo_pedido`() RETURNS date
BEGIN
	DECLARE dt_ultimo_pedido DATE;
    
    SELECT
		MAX(dt_emissao) INTO dt_ultimo_pedido
	FROM pedidos;
    
    RETURN dt_ultimo_pedido;
END $$
DELIMITER ;



SELECT f_ultimo_pedido() AS dt_ultimo_pedido;