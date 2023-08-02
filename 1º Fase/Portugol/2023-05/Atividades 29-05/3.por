programa
{
	
	funcao inicio()
	{
		inteiro X[10], Y[10], R[20]
		inteiro i = 0, x = 0, y = 0

		
		para (i = 0; i < 10; i++){
			limpa()
			escreva("\nVetor X -")
			escreva("\nDigite um número: ")
				leia(X[i])

			escreva("\nVetor Y -")
			escreva("\nDigite um número: ")
				leia(Y[i])
		}


		para (i = 0; i < 20; i++){
				se (i % 2 == 0){
					R[i] = X[x]
					x++
				} senao {
					R[i] = Y[y]
					y++
				}
		}

		para (i = 0; i < 20; i++){
			escreva(R[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {X, 6, 10, 1}-{Y, 6, 17, 1}-{R, 6, 24, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */