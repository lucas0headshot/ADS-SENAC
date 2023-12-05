/*
	Comandos permitidos
*/
	/*
		Clientes
    */
		SELECT * FROM clientes;

		INSERT INTO clientes
			VALUES (990993, 'Teste testando do teste permissoes', 'CRICIUMA', 604);
			
		UPDATE clientes
			SET
				nm_cliente = 'Teste testinho'
		WHERE cd_cliente = 990993;

		DELETE FROM clientes WHERE cd_cliente = 990993;
    
    /*
		Produtos
    */
		SELECT * FROM produtos;

		INSERT INTO produtos
			VALUES (100000, 'Copo', 'CP', 1.20, 1.00, NOW());
			
		UPDATE produtos
			SET
				nm_produto = 'Copinho'
		WHERE cd_produto = 100000;

		DELETE FROM produtos WHERE cd_produto = 100000;
    
    

/*
	Comandos não permitidos
*/
	SELECT * FROM representantes;
    
    INSERT INTO representantes
		VALUES (1874, 'Mazon');
        
	UPDATE representates
		SET
			nm_representante = 'Marcelo'
	WHERE cd_representante = 1874;
    
    DELETE FROM representantes WHERE cd_representante = 1874;