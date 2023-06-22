programa
{
	//Ler uma quantidade de números, ao final informar a soma dos positivos e a quantiadade de negativos
	
	funcao inicio()
	{
		inteiro soma_positivo = 0, q_negativo = 0, i = 0, q = 0, num[22]

		escreva("Deseja digitar quantos números? ")
			leia(q)

		para (i = 1; i<=q; i++){
			limpa()
			escreva("Digite o ",i,"º número: ")
				leia(num[i])
			se (num[i] < 0){
				q_negativo = q_negativo + 1
			}senao{
				soma_positivo = soma_positivo + num[i]
			}
		}

		limpa()
		escreva("\nDentre os números que você digitou")
		escreva("\nSoma dos positivos: ",soma_positivo)
		escreva("\nQuantidade de negativos: ",q_negativo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */