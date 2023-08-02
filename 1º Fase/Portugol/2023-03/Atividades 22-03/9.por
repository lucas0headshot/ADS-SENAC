programa
{
	
	funcao inicio()
	{
		inteiro n, n2, n3, n4

		n = 0
		n2 = 0
		n3 = 0

		escreva("Digite o primeiro número: ")
			leia(n)
		
		enquanto (n2 <= n){
			escreva("Digite o segundo número(Maior que o anterior): ")
				leia(n2)
		}
		
		enquanto (n3 <= n2){
			escreva("Digite o terceiro número(Maior que o anterior): ")
				leia(n3)
		}
		
		escreva("Digite o quarto número(Não precisa ser maior que o anterior): ")
			leia(n4)

		escreva("\nOrdem decrescente...")
		
		se (n4 > n3){
			escreva("\n",n4)
			escreva("\n",n3)
			escreva("\n",n2)
			escreva("\n",n)
		}senao se (n4 > n2){
			escreva("\n",n3)
			escreva("\n",n4)
			escreva("\n",n2)
			escreva("\n",n)
		}senao se(n4 > n){
			escreva("\n",n3)
			escreva("\n",n2)
			escreva("\n",n4)
			escreva("\n",n)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 476; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */