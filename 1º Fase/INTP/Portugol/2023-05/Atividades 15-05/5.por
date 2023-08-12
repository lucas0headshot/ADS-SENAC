//5
programa
{
	funcao inicio()
	{
		inteiro A[5] = {7, 21, 15, 12, 82}, num = 0, posicao = 0, valor = 0, i = 0

		escreva("Digite um numero: ")
			leia(num)	

		para(i=0; i < 5; i++){
			se(A[i] == num){
				posicao = i
				valor = A[i]
			}
		}

		se (valor == num){
			escreva("O valor digitado foi ",valor," e a posição é ",posicao)
		}senao{
			escreva("Numero não encontrado")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */