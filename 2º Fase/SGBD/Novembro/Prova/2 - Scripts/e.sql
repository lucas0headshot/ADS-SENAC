/*
	Listar as vagas (id e nome) de uma empresa específica (da sua escolha), mostrando seus respectivos currículos inscritos (nome, email e descrição) que estejam com status Ativo. A ordem deve ser por data de cadastro da inscrição do currículo na vaga.
*/
	SELECT
		vaga.id AS codigo,
        vaga.nome AS nome_vaga,
    
		curriculo.id AS codigo_curriculo,
        curriculo.nome AS nome_curriculo,
        curriculo.email AS email_curriculo,
        curriculo.descricao AS descricao_curriculo
    
    FROM vaga_curriculo
    
    LEFT JOIN vaga
		ON vaga.id = vaga_curriculo.id_vaga
        
	LEFT JOIN curriculo
		ON (
			curriculo.id = vaga_curriculo.id_curriculo
        )
    
    WHERE 
		curriculo.status = 'A'
		AND vaga.id_empresa = 1
        
	ORDER BY
		vaga_curriculo.data_cadastro;