programa
{
	
	funcao inicio()
	{
		inteiro pontos = 0, i = 0, j = 0
		inteiro R[5] = {21, 12, 1, 3, 7}, S[10], X[10]

		para (i = 0; i < 10; i++){
			limpa()
			escreva("Preencha o vetor S")
			escreva("\nEscreva um número: ")
				leia(S[i])
		}

		para (i = 0; i < 10; i++){
			para (j = 0; j < 5; j++){
				se (R[j] == S[i]){
					X[i] = S[i]
				}

				se (S[j] == X[i]){
					X[i] = 0
				}
			}
		}

		para (i = 0; i < 10; i++){
			se (X[i] != 0){
				escreva("\n",X[i])	
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {R, 7, 10, 1}-{S, 7, 36, 1}-{X, 7, 43, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */