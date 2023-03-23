programa
{
	//Ler três números e informar o menor número
	
	funcao inicio()
	{
		inteiro num, num2, num3

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)
		escreva("Digite o terceiro número: ")
			leia(num3)

		se (num < num2 e num < num3){
			escreva(num," é o menor número!")
		}senao se(num2 < num3){
			escreva(num2," é o menor número!")			
		}senao{
			escreva(num3," é o menor número!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 56; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */