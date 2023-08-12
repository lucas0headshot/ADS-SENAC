programa
{
	//Ler 5 notas de uma quantidade de alunos, calcular e informar a média de cada aluno, média da turma, % de alunos que tiveram médias >= 5
	
	funcao inicio()
	{
		inteiro i = 1, q = 0, q_media_5 = 0
		real nota[12][6], media_turma = 0.00
		cadeia nome[12]
		caracter resposta = 'S'

		faca{
			limpa()
			escreva("Digite o ",i,"º nome: ")
				leia(nome[i])
			escreva("\nDigite a 1º nota: ")
				leia(nota[i][0])
			escreva("\nDigite a 2º nota: ")
				leia(nota[i][1])
			escreva("\nDigite a 3º nota: ")
				leia(nota[i][2])
			escreva("\nDigite a 4º nota: ")
				leia(nota[i][3])
			escreva("\nDigite a 5º nota: ")
				leia(nota[i][4])
				
			nota[i][5] = (nota[i][0] + nota[i][1] + nota[i][2] + nota[i][3] + nota[i][4]) / 5

			se (nota[i][5] >= 5){
				q_media_5++	
			}
			
			q++
			media_turma += nota[i][5]
			i++
			
			escreva("\n Deseja continuar(S/N)? ")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()
		escreva("Médias: ")
		para (i = 1; i <= q; i++){
			se (i == q){
				escreva(nome[i],"(",nota[i][5],")")	
			}senao{
				escreva(nome[i],"(",nota[i][5],"), ")
			}
		}

		escreva("\nMédia da turma: ",(media_turma / q)," \n% alunos c/ média >= 5: ",(q_media_5 * 100) / q)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {q_media_5, 7, 24, 9}-{nota, 8, 7, 4}-{nome, 9, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */