//2
programa
{
	
	funcao inicio()
	{

		inteiro VetorA[5], i = 0, VetorT[5]
		
		para (i = 0; i<5; i++){
			escreva("\n\nDigite um numero: ")
				leia(VetorA[i])
		}
		
		para (i = 0; i<5; i++){
			VetorT[i] = VetorA[i]*3
		}
	
		para (i = 0; i<5; i++){
			escreva(VetorT[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */