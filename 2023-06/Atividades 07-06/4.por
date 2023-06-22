programa{
	//Preencher uma matriz com o código, altura e delegação de um atleta
	//Ao final imprimir os atletas de cada delegação e o maior atleta
	
	funcao inicio(){
		inteiro i = 0, j = 0, qAtletas = 0, qDelegacoes = 0
		real alturas[10]
		cadeia nomes[10], delegacoes[5]
		caracter respostaDelegacao = 'N', respostaAtleta = 'N'

		faca {
			limpa()
			escreva("Digite o nome da delegação: ")
				leia(delegacoes[i]) 

			faca {
				limpa()
				escreva("/nDelegação: ",delegacoes[i])
				escreva("/nDigite o nome: ")
					leia(nomes[i])
				escreva("/nDigite a altura: ")
					leia(alturas[i])
				
				escreva("/nDeseja continuar cadastrando atletas(S/N)? ")
				leia(respostaAtleta)	
			} enquanto (respostaAtleta != 'S')

			i++
			
			escreva("Deseja continuar cadastrando delegações(S/N)? ")
				leia(respostaDelegacao)
		} enquanto (respostaDelegacao != 'S')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */