programa
{
	//Ler dois números e executar as opções de acordo com a escolha do usuário
	
	funcao inicio()
	{
		inteiro opcao, num, num2

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)

		escreva("1 - Calcular média \n2 - Diferença entre o + e - \n3 - Produto(Multiplicação) \n4 - Dividir 1º pelo 2º")
		escreva("\nO que deseja fazer com esses números? ")
			leia(opcao)

		escolha (opcao){
			caso 1:
				escreva("\n(",num," + ",num2,")  / 2 = ",(num + num2) / 2)
				pare
			caso 2:
				se (num > num2){
					escreva("\n",num," - ",num2," = ",num - num2)
				}senao{
					escreva("\n",num2," - ",num," = ",num2 - num)
				}
				pare
			caso 3:
				escreva("\n",num," * ",num2," = ",num * num2)
				pare
			caso 4:
				escreva("\n",num," / ",num2," = ",num / num2)
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
 * @POSICAO-CURSOR = 86; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */