programa{
	//Preencher uma matriz e impossibilitar com que o usuário digite números repetidos
	
	funcao inicio(){
		inteiro matriz[3][3], i = 0, j = 0, k = 0, l = 0
		inteiro num
		caracter opcao = 'S'
		logico repetido = falso

		faca {
				limpa()
				escreva("Matriz: [",i,"][",j,"]")
				escreva("\nDigite um numero: ")
					leia(num)

				para (k = 0; k < 3; k++){
					para (l = 0; l < 3; l++){
						se (matriz[k][l] == num){
							repetido = verdadeiro
							escreva("\nNúmero repetido...")
							escreva("\nDigite outro número: ")
								leia(matriz[k][l])
						} senao {
							repetido = falso
						}
					}
				}

				se (repetido == falso){
					matriz[i][j] = num
				}


				escreva("\nDeseja continuar(S/N)? ")
					leia(opcao)
		} enquanto (opcao != 'N')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 527; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 5, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */