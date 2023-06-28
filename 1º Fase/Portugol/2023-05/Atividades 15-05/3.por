//3
programa
{
	funcao inicio()
	{
	
	inteiro VetorA[10], i, maior = 0, menor = 0, diferenca
	
	para (i = 0; i<=9; i++){
		escreva("\nDigite um num: ")
			leia(VetorA[i])

		se (i == 0){
			menor = i
		}

		se (i < menor){
			menor = i
		}
		
		se (i > maior){
			maior = i
		}
	}
	
		diferenca = maior - menor
		escreva(VetorA[i],"\n")	
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {VetorA, 7, 9, 6}-{i, 7, 21, 1}-{maior, 7, 24, 5}-{menor, 7, 35, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */