programa
{
	//Ler uma quantidade de números e ao final informar o maior, menor e a média

	inclua biblioteca Matematica --> Mat
	funcao inicio()
	{
		inteiro i = 1, num[12], media = 0, j = 0, maior = 0, menor = 0
		caracter resposta = 'S'

		faca{
			escreva("Digite um número: ")
				leia(num[i])
			media = media + num[i]
			i++
			escreva("Deseja continuar(S/N)?: ")
				leia(resposta)
		}enquanto (resposta != 'N')

		para (j = 1; j == i; j++){
			se (num[j] > maior){
				maior = num[j]
			}senao{
				menor = num[j]
			}
		}

		limpa()
		escreva("Dentre os números digitados...")
		escreva("\nMaior: ",maior)
		escreva("\nMenor: ",menor)
		escreva("\nMédia: ",media / i)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 8, 10, 1}-{num, 8, 17, 3}-{j, 8, 37, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */