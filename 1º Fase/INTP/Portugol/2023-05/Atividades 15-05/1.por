//1
programa
{
	
	funcao inicio()
	{
		inteiro A[5], maior, menor, media = 0, soma = 0, i =0

		para(i=0; i < 5; i++){
			escreva("\nDigite um número:")
				leia(A[i])
		}
		
		menor = A[0]
		
		para(i=0; i < 5; i++){
			se(A[i] < menor){
				menor = A[i]
			}
		}

		maior = A[0]
		
		para(i=0; i < 5; i++){
			se(A[i] > maior){
				maior = A[i]
			}
		}


		para(i=0; i < 5; i++){
			soma = soma + A[i]
		}

		media = soma/5

		para(i=0; i < 5; i++){
			escreva(i+1," numero é ",A[i],"\n")	
		}
		
		escreva("O menor numero é ",menor,", o maior é ",maior," e a media entre eles é ",media)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */