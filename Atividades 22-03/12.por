programa
{
	//ler dois números e informar se a divisão do primeiro número pelo segundo é exata
	
	funcao inicio()
	{
		inteiro num, num2

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)
		
		se ((num % num2) == 0){
			escreva(num," / ",num2," é exato!")
		}senao{
			escreva(num," / ",num2," não é exato!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */