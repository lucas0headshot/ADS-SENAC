programa
{
	//Ler três notas e a opção do usuário, calcular e informar a média aritmética ou ponderada
	
	funcao inicio()
	{
		real n, n2, n3
		inteiro opcao

		escreva("Digite a primeira nota: ")
			leia(n)
		escreva("Digite a segunda nota: ")
			leia(n2)
		escreva("Digite a terceira nota: ")
			leia(n3)
		escreva("Como deseja calcular a média? \n 1 - Aritmética \n 2 - Ponderada(3,3,4) \n")
			leia(opcao)

		escolha (opcao){
			caso 1:
				escreva("Média: ",(n + n2 + n3) / 3)
				pare
			caso 2:
				escreva("Média ponderada(3,3,4): ",((n * 3) + (n2 * 3) + (n3 * 4)) / 3)
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */