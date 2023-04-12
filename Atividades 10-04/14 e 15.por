programa
{
	//Informar todos os números de 1 até um número digitado pelo usuário e informar a soma destes números
	
	funcao inicio()
	{
		inteiro i, num, resultado = 1
		caracter resposta = 'A'

		faca{
			escreva("Digite um número: ")
				leia(num)
			escreva("\nDeseja calcular o produto ou fatorial(P/F)? ")
				leia(resposta)
		}enquanto ((num <= 0) ou (resposta != 'P') e (resposta != 'F'))

		limpa()
		se (resposta == 'P'){
			para (i = 1; i <= num; i++){
				se (i == num){
					escreva(i)
				}senao{
					escreva(i,", ")
				}
				resultado = resultado * i
			}
			escreva("\nProduto: ",resultado)
		}senao{
			para (i = 1; i <= num; i++){
			se (i == num){
				escreva(i)
			}senao{
				escreva(i,", ")
			}
			resultado = resultado + i
			}
			escreva("\nFatorial: ",resultado)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */