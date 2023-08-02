programa
{
	//Ler o nome, n1 e n2 de uma quantidade de alunos e informar a média aritmética das notas
	
	funcao inicio()
	{
		inteiro n[17], n2[17], i = 0
		cadeia nome[17], resposta = "S"

		faca{
			limpa()
			i = i + 1
			escreva("Digite o nome: ")
				leia(nome[i])
			escreva("Digite a 1º nota: ")
				leia(n[i])
			escreva("Digite a 2º nota: ")
				leia(n2[i])
			limpa()
			escreva("\nAluno: ",nome[i])
			escreva("\nNota 1: ",n[i])
			escreva("\nNota 2: ",n2[i])
			escreva("\nMédia aritmética: ",(n[i] + n2[i]) / 2)
			escreva("\nDeseja continuar(S/N)? ")
				leia(resposta)
		}enquanto (resposta != "N")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */