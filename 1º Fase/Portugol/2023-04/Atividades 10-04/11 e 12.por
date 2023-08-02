programa
{
	//Ler uma quantidade de números e informar a quantidade e porcentual de pares e ímpares
	
	funcao inicio()
	{
		inteiro num, i = 1, q_par = 0, q_impar = 0
		cadeia resposta = "S"

		faca{
			limpa()
			escreva("Digite o ",i,"º número: ")
				leia(num)

			se (num % 2 == 0){
				q_par = q_par + 1
			}senao{
				q_impar = q_impar + 1
			}
			
			escreva("Diseja continuar(S/N)? ")
				leia(resposta)
			
			i++
		}enquanto (resposta != "N")

		limpa()
		escreva("Dentro os números digitados...")
		escreva("\nQuantidade de Pares: ",q_par," \n% de Pares: ",(q_par * 100) / (i - 1))
		escreva("\nQuantidade de Ímpares: ",q_impar," \n% de Ímpares: ",(q_impar * 100) / (i - 1))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 7, 15, 1}-{q_par, 7, 22, 5}-{q_impar, 7, 33, 7}-{resposta, 8, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */