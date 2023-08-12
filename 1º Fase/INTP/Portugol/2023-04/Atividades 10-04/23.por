programa
{
	//Ler duas notas de uma quantidade de alunos e ao final informar o total de alunos aprovados, em exame e reprovados e a média da classe
	
	funcao inicio()
	{
		cadeia nome[12]
		inteiro i = 1, q = 0, cont = 0
		real nota[12][4], media_classe = 0.00
		caracter resposta = 'S' 

		faca{
			limpa()
			escreva("Digite o ",i,"º nome: ")
				leia(nome[i])
			escreva("\nDigite a 1º nota: ")
				leia(nota[i][0])
			escreva("\nDigite a 2º nota: ")
				leia(nota[i][1])
			nota[i][2] = (nota[i][0] + nota[i][1]) / 2

			se (nota[i][2] <= 3){ //Aprovado
				nota[i][3] = 1.00
			}senao se ((nota[i][2] >= 3) e (nota[i][2] < 7)){ //Exame
				nota[i][3] = 2.00
			}senao se (nota[i][2] >= 7){ //Reprovado
				nota[i][3] = 3.00
			}

			q++
			media_classe = media_classe + nota[i][2]
			i++
			escreva("\n Deseja continuar(S/N)? ")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()

		escreva("\nAprovados: ")
		para (i = 1; i <= q; i++){
			se (nota[i][2] <= 3){ //Aprovado
				se (i == q){
					escreva(nome[i])
				}senao{
					escreva(nome[i],", ")
				}
			}
		}

		escreva("\nEm exame: ")
		para (i = 1; i <= q; i++){
			se ((nota[i][2] >= 3) e (nota[i][2] < 7)){
				se (i == q){
					escreva(nome[i])
				}senao{
					escreva(nome[i],", ")
				}
			}
		}
		se (cont == 0){
			escreva("nenhum")
		}

		escreva("\nReprovados: ")
		cont = 0
		para (i = 1; i <= q; i++){
			se (nota[i][2] >= 7){
				cont++
				se (i == q){
					escreva(nome[i])
				}senao{
					escreva(nome[i],", ")
				}
			}
		}
		se (cont == 0){
			escreva("nenhum")
		}

		escreva("\nMédia da classe: ",media_classe / q)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1516; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */