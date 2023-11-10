SELECT
	COUNT(vaga.id) AS qtde,
    
    area_atuacao.nome AS nome_area_atuacao

FROM vaga

LEFT JOIN area_atuacao
	ON area_atuacao.id = vaga.id_area_atuacao

WHERE
	vaga.status = 'R'
    
GROUP BY
	area_atuacao.id,
    area_atuacao.nome;