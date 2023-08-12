programa
{
	//Número 1
	
	funcao inicio()
	{
		inteiro M[2][2], R[2][2], maior = 0
		
		para (inteiro i = 0; i <= 1; i++)
		{
			para (inteiro j = 0; j <= 1; j++)
			{
				limpa()
				escreva("Digite um número: ")
					leia(M[i][j])

				se (M[i][j] > maior)
				{
					maior = M[i][j]
				}

				
				R[i][j] =  M[i][j] * maior
			}
		}
			limpa()
			escreva("R[0][1]: ",R[0][0])
			escreva("\nR[0][1]: ",R[0][1])
			escreva("\nR[0][1]: ",R[1][0])
			escreva("\nR[0][1]: ",R[1][1])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 22; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */