programa
{
	inclua biblioteca Util --> U
	
	funcao inicio()
	{
		inteiro vetor[5] = {U.sorteia(1, 2), U.sorteia(3, 4), U.sorteia(5, 6), U.sorteia(7, 8), U.sorteia(9, 10)}, num
		logico achou = falso
	
		escreva("Qual número deseja procurar? ")
			leia(num)

		para (inteiro i = 0; i < 5; i++){
			se (vetor[i] == num){
				achou = verdadeiro
				escreva(num," está na posição ",i," do vetor!")
			}
		}

		se (nao achou){
			escreva(num," não está no vetor...")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */