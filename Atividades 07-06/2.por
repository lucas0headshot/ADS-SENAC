programa
{
	
	funcao inicio()
	{
		inteiro nums[3][3], i = 0, j = 0, numMaior = 0

		para (i = 0; i < 3; i++){
			para (j = 0; j <3; j++){
				limpa()
				escreva("Digite um número: ")
					leia(nums[i][j])

				se (nums[i][j] > numMaior){
					numMaior = nums[i][j]
				}
			}
		}

		limpa()
		escreva("Maior número: ",numMaior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nums, 6, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */