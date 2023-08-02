programa{
	//Preencher uma matriz com as vendas do mês e semana, ao final informar o total de cada mês
	
	funcao inicio(){
		real vendas[13][5], totalMes[12]
		inteiro i = 0, j = 0

		para (i = 1; i < 13; i++){
			para (j = 1; j < 5; j++){
				limpa()
				escreva("Digite os vendas da ",j,"º semana do ",i,"º mês: ")
					leia(vendas[i][j])

				totalMes[i] += vendas[i][j]
			}
		}

		limpa()
		escreva("\nTotal de vendas:")
		para (i = 1; i < 13; i++){
			escreva("\n",i,"º mês: ",totalMes[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */