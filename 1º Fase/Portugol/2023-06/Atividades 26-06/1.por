programa{
	//Preencher uma matriz e impossibilitar com que o usuário digite números repetidos
	
	funcao inicio(){
		inteiro matriz[2][5], i = 0, j = 0, k = 0, l = 0
		inteiro num
		logico repetido = falso

		para (i = 0; i < 2; i++) {
			para (j = 0; j < 5; j++) {
				limpa()
				escreva("Matriz: [",i,"][",j,"]")
				escreva("\nDigite um numero: ")
					leia(num)

				para (k = 0; k < 2; k++){
					para (l = 0; l < 5; l++){
						se (matriz[k][l] == num){
							retorne
						} senao {
							repetido = falso
						}
					}
				}

				se (repetido == falso){
					matriz[i][j] = num
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 474; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */