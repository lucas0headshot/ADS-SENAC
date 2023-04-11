programa
{
	//Informar todos os números de 1 até um número digitado pelo usuário e informar a soma destes números
	
	funcao inicio()
	{
		inteiro i, num, produto = 0

		faca{
			escreva("Digite um número: ")
				leia(num)
		}enquanto (num <= 0)
		
		para (i = 1; i <= num; i++){
			se (i == num){
				escreva(i)
			}senao{
				escreva(i,", ")
			}
			produto = produto + i
		}

		escreva("\nProduto/Fatorial: ",produto)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 412; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */