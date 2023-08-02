programa
{
	//Ler uma quantidade de números e ao final informar o maior, menor e a média
	
	funcao inicio()
	{
		inteiro i = 0, num, maior = 0, menor = 0
		real media = 0.00
		caracter resposta = 'S'

		faca{
			escreva("Digite um número: ")
				leia(num)
			media = media + num

			se (i == 0){
				menor = num
			}

			i++
			
			se (num > maior){
				maior = num
			}
			se (num < menor){
				menor = num
			}
			
			escreva("Deseja continuar(S/N)?: ")
				leia(resposta)
		}enquanto (resposta != 'N')

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
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 7, 10, 1}-{maior, 7, 22, 5}-{menor, 7, 33, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */