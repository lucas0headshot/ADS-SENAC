programa
{
	
	funcao inicio()
	{
		real v_Aula, n_Horas, p_INSS, sal_Liquido

		escreva("Digite o valor da hora aula(R$): ")
			leia(v_Aula)
		escreva("Digite o número de horas trabalhadas: ")
			leia(n_Horas)
		escreva("Digite o % do INSS: ")
			leia(p_INSS)

		sal_Liquido = v_Aula * n_Horas - (((v_Aula * n_Horas) * (p_INSS / 100)))

		escreva("Salário liquido: ",sal_Liquido,"R$")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */