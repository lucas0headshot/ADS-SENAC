programa
{
	
	funcao inicio()
	{
		inteiro pontos = 0, i = 0, j = 0
		inteiro loto[5] = {4, 12, 34, 25, 17}, aposta[10]


		para (i = 0; i < 10; i++){
			limpa()
			escreva("Faça suas apostas")
			escreva("\nEscreva um número: ")
				leia(aposta[i])
		}

		para (i = 0; i < 10; i++){
			para (j = 0; j < 5; j++){
				se (loto[j] == aposta[i]){
					pontos++
				}
			}
		}

		escreva("\nUau, você fez ",pontos," pontos!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 120; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */