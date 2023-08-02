programa
{
	//Ler dois números e executar as opções de acordo com a escolha do usuário

	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		inteiro opcao, num, num2

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)

		escreva("1 - 1º ^ 2º \n2 - √2 \n3 - √3")
		escreva("\nO que deseja fazer com esses números? ")
			leia(opcao)

		escolha (opcao){
			caso 1:
				escreva("\n",num," ^ ",num2," = ",Mat.potencia(num, num2))
				pare
			caso 2:
				escreva("\n",num,"√2  = ",Mat.raiz(num, 2))
				escreva("\n",num2,"√2  = ",Mat.raiz(num2, 2))
				pare
			caso 3:
				escreva("\n",num,"√3  = ",Mat.raiz(num, 3))
				escreva("\n",num2,"√3  = ",Mat.raiz(num2, 3))
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