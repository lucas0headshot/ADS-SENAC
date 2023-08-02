programa
{
	//Verificar se um número é negativo, caso seja retornar código 0
	
	funcao cadeia verificarNumero(inteiro num){
		se (num > 0){
			retorne "Código: 0"
		} senao {
			retorne "Código: 1"
		}
	}
	
	funcao inicio()
	{
		inteiro num
	
		escreva("Digite um número: ")
			leia(num)

		limpa()
		escreva(verificarNumero(num))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 78; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */