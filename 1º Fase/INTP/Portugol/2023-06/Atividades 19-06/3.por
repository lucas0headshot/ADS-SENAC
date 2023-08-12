programa
{
	//Número 3
	
	funcao inicio()
	{
		inteiro nums[6][4], i = 0, j = 0, qMaior30 = 0, nums2[6][4]

		para (i = 0; i <= 5; i++){
			para (j = 0; j <= 3; j++){
				limpa()
				escreva("Digite um número: ")
					leia(nums[i][j])

				se (nums[i][j] >= 30){
					nums2[i][j] = 0
					qMaior30++
				} senao {
					nums2[i][j] = nums[i][j]
				}
			}
		}

		limpa()
		escreva("Quantidade de númeors >= 30: ",qMaior30)
		para (i = 0; i <= 5; i++){
			para (j = 0; j <= 3; j++){
				escreva("\nnums2[",i,"][",j,"] = ",nums2[i][j])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */