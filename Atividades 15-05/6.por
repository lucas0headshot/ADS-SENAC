//6
programa
{
	
	funcao inicio()
	{
		inteiro A[5], B[5], i = 0, j = 0
		
		para (i = 0; i<5; i++) {
			escreva("Digite o valor do vetor A: ")
				leia(A[i])
			B[i] = A[i]
		}

		para (i = 4; i>=0; i--){
			B[i] = A[i]
			escreva("\nvetor B: ", B[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 251; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */