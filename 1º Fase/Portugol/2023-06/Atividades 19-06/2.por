programa{
	
	funcao inicio(){
		inteiro alunos[10][6], i = 0, j = 0, maior = 0, menor = 0
	
		para (i = 0; i < 10; i++){
			para (j = 1; j <= 3; j++){
				limpa()
				
				alunos[i][0] = i

				escreva("Aluno: ",alunos[i][0])
				escreva("\nDigite a ",j,"º nota: ")
				leia(alunos[i][j])

				se (alunos[i][j] > maior){
					maior = alunos[i][j]
				}

				se (alunos[i][j] < menor){
					menor = alunos[i][j]
				}
			}

			alunos[i][4] = maior
			alunos[i][5] = menor
		}

		limpa()
		para (i = 0; i < 10; i++){
			escreva("\nAluno ",alunos[i][0]," - Maior nota: ",alunos[i][4]," | Menor nota: ",alunos[i][5])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 113; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alunos, 4, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */