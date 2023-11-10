/*
	Listar as quantidades de vagas agrupando por cidade, considerando apenas as vagas que ainda não foram concluídas. Status: R-recrutamento, S-seleção, C-concluída. Ordenar pelo nome da cidade.
*/
	SELECT
		COUNT(vaga.id) AS qtde,
        
        cidade.nome AS nome_cidade
        
	FROM vaga
    
	LEFT JOIN empresa
		ON empresa.id = vaga.id_empresa
    
    LEFT JOIN cidade
		ON cidade.id = empresa.id_cidade
        
    WHERE
		vaga.status <> 'C'
        
	GROUP BY
		cidade.id,
        cidade.nome;