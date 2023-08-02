programa
{
	//Ler um número e informar se é divisível por 10,5 e 2 ao mesmo tempo
	
	funcao inicio()
	{
		inteiro num

		escreva("Digite um número: ")
			leia(num)

		se (num % 10 == 0){
			escreva(num," é divisível por 10, 5 e 2 ao mesmo tempo!")
		}senao{
			escreva(num," não é divisível por 10, 5 e 2 ao mesmo tempo!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 192; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */