programa
{
	//Ler dois números e informar qual é o maior e menor
	
	funcao inicio()
	{
		real num, num2

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)	

		se (num > num2){
			escreva(num," > ",num2)
			escreva("\n",num2," < ",num)
		} senao{
			escreva(num2," > ",num)
			escreva("\n",num," < ",num2)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 64; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */