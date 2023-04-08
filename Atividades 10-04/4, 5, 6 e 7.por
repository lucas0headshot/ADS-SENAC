programa
{
	//Imprimir os números entre um intervalo
	
	funcao inicio()
	{
		inteiro de, ate = 0, i = 0, soma = 0

		escreva("Imprimir os números")
		escreva("\nDe: ")
			leia(de)
		escreva("\nAte: ")
			leia(ate)

		limpa()

		se (ate < de){
			para (i = de; i>=ate; i--){
				se (i == ate){
					escreva(i)
				}senao{
					escreva(i,", ")
				}
				soma = soma + i
			}
		}senao{
			para (i = de; i<=ate; i++){
				se (i == ate){
					escreva(i)
				}senao{
					escreva(i,", ")
				}
				soma = soma + i
			}
		}

		se (soma != ate){
			escreva("\nSoma: ",soma)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */