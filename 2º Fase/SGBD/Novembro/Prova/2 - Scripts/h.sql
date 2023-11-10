/*
	Mostrar o valor médio das faixas salariais das vagas, ordenando-as em ordem crescente de valor.
*/
	SELECT
		vaga.id AS codigo,
        vaga.nome AS nome_vaga,
    
		AVG(vaga.valor_salario_inicial) AS media_menor_valor_salario_inicial,
        AVG(vaga.valor_salario_final) AS media_maior_valor_salario_final
        
	FROM vaga
    
    GROUP BY
		vaga.id,
        vaga.nome
        
	ORDER BY
		AVG(vaga.valor_salario_inicial) ASC;