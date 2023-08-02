programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro voto = 0, candidato_1 = 0, candidato_2 = 0, nulo = 0, branco = 0, votos = 0
		cadeia candidato[2]

		escreva("Digite o nome do 1º candidato: ")
			leia(candidato[0])
		escreva("Digite o nome do 2º candidato: ")
			leia(candidato[1])
		
		faca{
			limpa()
			escreva("Escolha um candidato: \n 1 - Candidato ",candidato[0]," \n 2 - Candidato ",candidato[1]," \n 3 - Branco \n Qualquer número diferente de 0, 1, 2 e 3 anulará o voto!")

			se (voto == 1){
				candidato_1 = candidato_1 + 1
				porcn_cand_1 = porcn_cand_1 + 
			}senao se(voto == 2){
				candidato_2 = candidato_2 + 1
			}senao se(voto == 3){
				branco = branco + 1
			}senao{
				nulo = nulo + 1
			}
		}enquanto (voto != 0)

		escreva("Votação encerrada!")
		Util.aguarde(1000)
		limpa()
				
		escreva("Houveram ",votos," votos")
		escreva("")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 593; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {candidato_1, 7, 20, 11}-{candidato_2, 7, 37, 11}-{candidato, 8, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */