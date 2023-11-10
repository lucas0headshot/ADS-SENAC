/*
	Listar vagas.
    
    Filtrar por cidade.
    
    Ordenar pela data_cadastro
*/
	
    /*
		Listar todas vagas
    */
		SELECT
			vaga.id AS codigo,
			vaga.nome,
			vaga.qtde,
			vaga.data_cadastro,
			
			cidade.nome AS nome_cidade,
			cidade.uf AS uf_vaga
			
		FROM vaga
		
		LEFT JOIN empresa
			ON empresa.id = vaga.id_empresa
		
		LEFT JOIN cidade
			ON cidade.id = empresa.id_cidade
		
		ORDER BY
			vaga.data_cadastro;
            
            
	/*
		Listar e filtrar por Criciúma
    */
		SELECT
			vaga.id AS codigo,
			vaga.nome,
			vaga.qtde,
			vaga.data_cadastro,
			
			cidade.nome AS nome_cidade,
			cidade.uf AS uf_vaga
			
		FROM vaga
		
		LEFT JOIN empresa
			ON empresa.id = vaga.id_empresa
		
		LEFT JOIN cidade
			ON cidade.id = empresa.id_cidade
		
        WHERE
			cidade.id = 4204608
        
		ORDER BY
			vaga.data_cadastro;