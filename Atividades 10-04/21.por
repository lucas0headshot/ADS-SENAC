programa
{
	//Ler a idade e opinião de uma quantidade de pessoas e informar a média dos "excelentes", quantidade que reposndeu "regular" e % das pessoas que responderam "bom"
	
	funcao inicio()
	{
		inteiro idade[12], i = 1, opiniao[12]
		real media_excelente
		cadeia nome[12], filme
		caracter resposta = 'S'

		escreva("Digite o nome do filme: ")
			leia(filme)

		faca{
			limpa()
			opiniao[i] = 0
			escreva("Digite o ",i,"º nome: ")
				leia(nome[i])
				
			enquanto ((opiniao[i] < 1) ou (opiniao[i] > 3)){
				escreva("Digite a opinião(1 = Regular; 2 = Bom; 3 = Excelente): ")
					leia(opiniao[i])
			}

			media_excelente = media_excelente + 
		
			i++
		}enquanto (resposta != 'N')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */