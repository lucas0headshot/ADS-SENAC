DELIMITER $$
CREATE OR REPLACE PROCEDURE p_lista_produtos ()
BEGIN
	SELECT
		*
	FROM produtos;
END $$
DELIMITER ;



CALL p_lista_produtos();