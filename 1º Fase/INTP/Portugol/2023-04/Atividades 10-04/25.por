programa
{
	//Ler o peso e idade de 22 jogadores de vários times e ao final, calcular e informar o peso e idade média de cada um dos times, e o peso e idade média de todos os participantes
	
	funcao inicio()
	{
		inteiro i = 0, q_jogadores = 0, q_times = 0, j = 1, k = 1, idade_times[22][22]
		real media_idade_geral = 0.00, media_peso_geral = 0.00, peso_times[22][22], media_peso_time = 0.00, media_idade_time = 0.00
		caracter resposta_time = 'S', resposta_jogador = 'S'
		cadeia nome_times[22]
		
		faca{
			limpa()
			j = 1
			escreva("Digite o nome do time: ")
				leia(nome_times[i])

			faca{
				limpa()
				escreva("Time: ",nome_times[i])
				escreva("\nDigite a idade do ",j," jogador: ")
					leia(idade_times[i][j])
				escreva("Digite o peso do ",j," jogador: ")
					leia(peso_times[i][j])

				//Armazenar as idades e pesos
				media_idade_geral += idade_times[i][j]
				media_peso_geral += peso_times[i][j]

				q_jogadores++
				j++

				escreva("\n Deseja continuar cadastrando jogadores(S/N)? ")
				leia(resposta_jogador)
			}enquanto (resposta_jogador != 'N')

			q_times++
			i++
			escreva("\n Deseja continuar cadastrando times(S/N)? ")
				leia(resposta_time)
		}enquanto (resposta_time != 'N')

		//Exibir a média de peso e idade de cada time
		limpa()
		para (k = 0; k < q_times; k++){
			j = 1
			escreva("\n ------- \n Time: ",nome_times[k])
			para (i = 1; i <= q_times; i++){
				media_peso_time += peso_times[i][j]
				media_idade_time += peso_times[i][j]
	
				j++
			}

			escreva("\nMédia peso: ",media_peso_time / q_jogadores)
			escreva("\nMédia idade: ",media_idade_time / q_jogadores)
		}

		escreva("\n ------- \n Média idades geral: ",media_idade_geral / q_jogadores)
		escreva("\nMédia pesos geral: ",media_peso_geral / q_jogadores)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {q_jogadores, 7, 17, 11}-{q_times, 7, 34, 7}-{k, 7, 54, 1}-{idade_times, 7, 61, 11}-{peso_times, 8, 58, 10}-{media_peso_time, 8, 78, 15}-{media_idade_time, 8, 102, 16}-{nome_times, 10, 9, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */