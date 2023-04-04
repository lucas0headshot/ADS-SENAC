programa
{
	//Ler dois números e opção do usuário, calcular e informar
	
	funcao inicio()
	{
		inteiro opcao, num, num2

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)

		escreva("1 - Somar \n2 - Subtrair \n3 - Dividir \n4 - Multiplicar")
		escreva("\nO que deseja fazer com esses números? ")
			leia(opcao)

		escolha (opcao){
			caso 1:
				escreva("\n",num," + ",num2," = ",num + num2)
				pare
			caso 2:
				escreva("\n",num2," - ",num," = ",num2 - num)
				pare
			caso 3:
				escreva("\n",num," / ",num2," = ",num * num2)
				pare
			caso 4:
				escreva("\n",num," * ",num2," = ",num / num2)
				pare
			caso contrario:
				escreva("Opção inválida!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */