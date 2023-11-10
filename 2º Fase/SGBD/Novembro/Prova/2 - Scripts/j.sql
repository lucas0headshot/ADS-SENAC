/*
	Alterar a faixa salarial da vaga 5 para: valor inicial 3000, valor final: 4000.
*/
	UPDATE vaga
    
    SET valor_salario_inicial = 3000.00,
		valor_salario_final = 4000.00
    
    WHERE id = 5;