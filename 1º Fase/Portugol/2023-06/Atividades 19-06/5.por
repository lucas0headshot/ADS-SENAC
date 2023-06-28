programa{
	//Número 5
	
	funcao inicio(){
		cadeia nome[5]
		real produtos[5][6] 

		para(inteiro i = 0; i < 5; i++){
			limpa()
			escreva("\nQual o nome do produto? ")
				leia(nome[i])

			para(inteiro j = 0; j < 4; j++){
				escreva("\nQual o valor de ",nome[j]," nas lojas?")
					leia(produtos[i][j])
	
				escreva("\nQual o valor do frete de ",nome[i],"? ")
					leia(produtos[i][j])

				se(produtos[i][1] < 50){
					produtos[i][4] = produtos[i][5] * 1.05
				}
				
				se((produtos[i][1] >= 50) e (produtos[i][1] <= 100)){
					produtos[i][4] = produtos[i][5] * 1.10
				}
				
				se(produtos[i][1] > 100){
					produtos[i][4] = produtos[i][5] * 1.20
				}

				escreva("O valor de ",nome[i]," é ",produtos[i][4]," e seu imposto é ",produtos[i][5],"%\n")	
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 767; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {produtos, 6, 7, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */