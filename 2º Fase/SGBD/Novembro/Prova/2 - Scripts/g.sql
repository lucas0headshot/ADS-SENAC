/*
	Mostrar o menor e o maior salário ofertado pelas vagas.
*/
	SELECT
		vaga.id AS codigo,
        vaga.nome AS nome_vaga,
    
		MIN(vaga.valor_salario_inicial) AS menor_valor_salario_inicial,
        MAX(vaga.valor_salario_final) AS maior_valor_salario_final
        
	FROM vaga
    
    GROUP BY
		vaga.id,
        vaga.nome;