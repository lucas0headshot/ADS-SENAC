programa
{
	//Ler 3 números e retornar o maior, ordena-los e imprimi-los em ordem decrescente
	
	funcao inicio()
	{
		inteiro num, num2, num3

		escreva("Digite o 1º número: ")
			leia(num)
		
		escreva("Digite o 2º número: ")
			leia(num2)
			
		escreva("Digite o 3º número: ")
			leia(num3)

		limpa()
		escreva("Maior número: ",maiorNumero(num, num2, num3))
		escreva(ordemDecrescente(num, num2, num3))
	}

	//a)
	funcao inteiro maiorNumero(inteiro n, inteiro n2, inteiro n3) {		
		inteiro maior = 0

		se (n > maior) {
			maior = n
		}
    
    		se (n2 > maior) {
        		maior = n2
    		}
    
    		se (n3 > maior) {
        		maior = n3
    		}

    		retorne maior
	}

	//b
	funcao cadeia ordemDecrescente(inteiro num, inteiro num2, inteiro num3) {
		inteiro maior = maiorNumero(num, num2, num3)

		se (num2 > num3) {
			escreva("\n",maior," | ",num2," | ",num3)
		} senao {
			escreva("\n",maior," | ",num2," | ",num)
		}

		retorne ""
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */