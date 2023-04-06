programa
{
	
	funcao inicio()
	{
		inteiro num, num2, opcao

		opcao = 0

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o primeiro número: ")
			leia(num2)

		enquanto ((opcao < 1) ou (opcao > 4)){
			escreva("1 - Somar \n 2 - Dividir \n 3 - Multiplicar \n 4 - Subtrair \n O que você deseja fazer com estes números? ")
				leia(opcao)
			limpa()
		}

		escolha (opcao){
			caso 1:
				escreva("\n",num," + ",num2," = ",num + num2)
				pare
			caso 2:
				escreva("\n",num," / ",num2," = ",num / num2)
				pare
			caso 3:
				escreva("\n",num," * ",num2," = ",num * num2)
				pare
			caso 4:
				escreva("\n",num," - ",num2," = ",num - num2)
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 370; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */