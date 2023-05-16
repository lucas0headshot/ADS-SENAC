//4
programa
{	
	funcao inicio()
	{
		inteiro A[5], i = 0, negativo = 0
		
		para(i=0;i<5;i++){
			escreva("Digite um número: ")
				leia(A[i])
		}
		
		para(i=0; i<5; i++){
			se(A[i] < negativo){
				negativo=A[i]
			}
		}
		
		se (negativo < 0) {
			escreva("O primeiro número negativo está na posição: ", i)
		}senao{
			escreva("Número negativo não encontrado!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */