//Comparar dois vetores pré-preenchidos e informar quais matrículas estão presentes simultaneamente nos dois vetores 

programa {
	
	funcao inicio() {
		inteiro 	vetor_1[15] = {2513, 2134, 5412, 4217, 2121, 3749, 4012, 5122, 2387, 3888, 3122, 5551, 5432, 2122, 2098},
				vetor_2[10] = {3444, 2121, 4331, 2387, 5551, 4335, 2766, 2098, 4775, 3749}, v1 = 0, v2 = 0
				
				escreva("\n Matrículas que aparecem em ambos os vetores: ")
				para (v1 = 0; v1 < 15; v1++){
					para (v2 = 0; v2 < 10; v2++){
						se (vetor_2[v1] == vetor_2[v2]){
							escreva("\n",vetor_2[v1])
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
 * @POSICAO-CURSOR = 372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */