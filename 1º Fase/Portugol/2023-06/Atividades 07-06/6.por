programa{
	//Armazenar 10 alunos e suas respectivas 5 notas em uma disciplina, ao final informar um relatório
	
	funcao inicio(){
		inteiro i = 0, j = 0
		cadeia disciplina, nomes[11]
		real notas[10][6]
		caracter situacoes[10]
		

		escreva("Digite o nome da disciplina: ")
			leia(disciplina)
		para (i = 1; i < 11; i++){
			limpa()
			escreva("Disciplina: ",disciplina)
			escreva("\nAluno: ",i)
			escreva("\nDigite o nome: ")
				leia(nomes[i])
			para (j = 1; j < 6; j++){
				escreva("\nDigite a ",j,"º nota: ")
					leia(notas[i][j])

				notas[i][5] += notas[i][j]
			}

			notas[i][5] = notas[i][5] / 5
			
			se (notas[i][5] >= 7){
				situacoes[i] = 'A'
			} senao se (notas[i][5] <= 3){
				situacoes[i] = 'R'
			} senao {
				situacoes[i] = 'P'
			}
		}

		limpa()
		escreva("\nDisciplina: ",disciplina)
		para (i = 1; i < 11; i++){
			escreva("\n",nomes[i],"  \t",notas[i][5],"  \t",situacoes[i]) 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 845; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */