programa
{
	//Ler a idade e peso de uma quantidade de pessoas, ao final informar a média dos pesos de acordo com a faixa etária abaixo:
	//0 a 18 anos
	//+ 28 anos
	
	funcao inicio()
	{
		inteiro pessoa[12][12], i = 1, media_peso_18 = 0, media_peso_28 = 0, q_pessoas = 0
		caracter resposta = 'S'

		faca{
			limpa()
			escreva("Digite a idade: ")
				leia(pessoa[i][0])
			escreva("Digite o peso: ")
				leia(pessoa[i][1])

			se (pessoa[i][0] <= 18){
				media_peso_18 = media_peso_18 + pessoa[i][1]
			}senao se (pessoa[i][0] >= 28){
				media_peso_28 = media_peso_28 + pessoa[i][1]
			}

			i++
			q_pessoas++
			
			escreva("Deseja continuar(S/N)? ")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()
		escreva("Peso médio 0-18 anos: ",(media_peso_18 / q_pessoas)," \n Peso médio + 28 anos: ",(media_peso_28 / q_pessoas))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */