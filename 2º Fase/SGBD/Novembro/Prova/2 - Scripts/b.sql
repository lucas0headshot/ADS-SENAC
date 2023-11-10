/*
	Listar os dados de uma determinada vaga
*/
	SELECT
			vaga.id AS codigo,
			vaga.nome,
            vaga.descricao,
			vaga.qtde,
			vaga.data_cadastro,
            vaga.valor_salario_final,
            vaga.valor_salario_inicial,
			
            empresa.nome AS nome_empresa,
            
			cidade.nome AS nome_cidade,
			cidade.uf AS uf_vaga,
			
			area_atuacao.nome AS nome_area_atuacao
            
		FROM vaga
		
		LEFT JOIN empresa
			ON empresa.id = vaga.id_empresa
		
		LEFT JOIN cidade
			ON cidade.id = empresa.id_cidade
            
		LEFT JOIN area_atuacao
			ON area_atuacao.id = vaga.id_area_atuacao
            
		WHERE vaga.id = 7;