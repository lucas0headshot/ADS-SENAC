programa
{
	
	funcao inicio()
	{
		inteiro i, q_numero, numero[12]
		real media
		cadeia resposta

		q_numero = 1
		resposta = "S"
		media = 0.0

		enquanto (resposta != "N"){
			limpa()
			escreva("Digite o ",q_numero,"º número: ")
				leia(numero[q_numero])
			q_numero = q_numero + 1
			escreva("Deseja continuar(S/N)? ")
				leia(resposta)
			media = media + numero[q_numero]
		}

		limpa()
		escreva("Média dos números digitados: ",media / q_numero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 363; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {q_numero, 6, 13, 8}-{numero, 6, 23, 6}-{media, 7, 7, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */