programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro tempo

		escreva("A C4 detonará em quantos segundos? ")
			leia(tempo)

		escreva("\nDetonando em... ")
		enquanto (tempo > 0){
			escreva("\n",tempo)
			tempo = tempo - 1
			Util.aguarde(1000)
		}

		limpa()
		escreva("Kaboooooooooooooooom")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 214; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */