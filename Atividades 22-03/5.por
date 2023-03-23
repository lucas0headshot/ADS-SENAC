programa
{
	
	funcao inicio()
	{
		real sal

		escreva("Digite o salário(Em R$): ")
			leia(sal)

		se (sal > 1500){
			escreva(sal," + 30% = ",sal + (sal * 0.3))
		}senao{
			escreva("Esse funcionário não tem direito a aumento")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */