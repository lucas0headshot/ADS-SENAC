programa{
	//Número 7
	
	funcao inicio(){
		inteiro i = 0, j =0
		real produtos[6][4]

		para (i = 1; i < 6; i++){
			limpa()
			escreva("Armazém: ",i)
			
			escreva("\nDigite o estoque do produto: ")
				leia(produtos[i][1])
				
			escreva("\nDigite o custo do produto: ")
				leia(produtos[i][2])

			produtos[i][3] = produtos[i][2] * produtos[i][1]
		}

		limpa()
		escreva("Relatório...")
		para (i = 1; i < 6; i++){
			escreva("\nArmazém: ",i)
			escreva("\nQuant armazenada: ",produtos[i][1])
			escreva("\nCusto total do produto/armazém: ",produtos[i][3])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */