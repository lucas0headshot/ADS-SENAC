programa
{
	
	funcao inicio()
	{
		real v_Atrasado, v_Prestacao, p_Juros, q_Dias

		escreva("Digite o valor do prestacao(R$): ")
			leia(v_Prestacao)
		escreva("Digite o % de juros p/dia: ")
			leia(p_Juros)
		escreva("Digite há quantos dias est´atrasado: ")
			leia(q_Dias)

		v_Atrasado = (v_Prestacao * (p_Juros / 1000)) * q_Dias

		escreva("Valor atrasado: ",v_Atrasado,"R$")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */