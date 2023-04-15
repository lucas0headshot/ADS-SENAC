programa
{
	//Ler a idade e opinião de uma quantidade de pessoas e informar a média dos "excelentes", quantidade que reposndeu "regular" e % das pessoas que responderam "bom"
	
	funcao inicio()
	{
		inteiro idade[12], i = 1, opiniao[12], q_pessoas = 0, q_bom = 0, q_regular = 0
		real media_excelente = 0.00
		cadeia filme
		caracter resposta = 'S'

		escreva("Digite o nome do filme: ")
			leia(filme)

		faca{
			limpa()
			opiniao[i] = 0
			escreva("Digite a idade: ")
				leia(idade[i])
				
			enquanto ((opiniao[i] < 1) ou (opiniao[i] > 3)){
				escreva("Digite a opinião(1 = Regular; 2 = Bom; 3 = Excelente): ")
					leia(opiniao[i])
			}

			se (opiniao[i] == 3){
				media_excelente = media_excelente + idade[i]	
			}senao se (opiniao[i] == 2){
				q_bom++
			}senao{
				q_regular++
			}
		
			i++
			q_pessoas++

			escreva("Deseja continuar(S/N)? ")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()
		escreva("Filme:  ",filme," \n Media idades excelente: ",media_excelente / q_pessoas," \n Quantidade regular: ",q_regular," \n % bom: ",(q_bom * 100) / q_pessoas)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {q_pessoas, 7, 41, 9}-{q_bom, 7, 56, 5}-{q_regular, 7, 67, 9}-{media_excelente, 8, 7, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */