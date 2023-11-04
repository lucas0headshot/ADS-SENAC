DELIMITER $$
CREATE OR REPLACE PROCEDURE p_lista_ultimo_pedido (OUT nr_ultimo_pedido INT)
BEGIN
	SELECT
		MAX(nr_pedido) INTO nr_ultimo_pedido
	FROM pedidos;
END $$
DELIMITER ;



CALL p_lista_ultimo_pedido(@nr_ultimo_pedido);
SELECT @nr_ultimo_pedido;