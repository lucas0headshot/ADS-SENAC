/*
	Listar todas as vagas e suas respectivas empresas, que tenham a faixa salarial entre 3.000 e 4.000 reais. Ordenar pelo valor inicial do salário.
*/
	SELECT
		vaga.nome AS nome_vaga,
        vaga.valor_salario_inicial,
        vaga.valor_salario_final,
        
        empresa.nome AS nome_empresa
    
    FROM vaga
    
    LEFT JOIN empresa
		ON empresa.id = vaga.id_empresa
    
    WHERE
		vaga.valor_salario_inicial >= 3000
        AND vaga.valor_salario_final <= 4000
    
    ORDER BY
		vaga.valor_salario_inicial;