programa
{
	
	funcao inicio()
	{
		inteiro B[10] = {13, -3, 3, 0, -1, 6, 1, -42, 23, 0}, X
		inteiro i = 0

		 escreva("Digite um número: ")
		 	leia(X)

		para (i = 9; i > 0; i--){
      		B[i] = B[i - 1]
		}

     	B[0] = X

     	para (i = 0; i <= 9; i++){
      		escreva(B[i],", ")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {B, 6, 10, 1}-{X, 6, 56, 1}-{i, 7, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */