programa
{
	//Número 13
	//Ler uma temperatura em Farenheit e imprimir
	
	funcao inicio()
	{
		real tempF, tempC

		escreva("Digite uma temperatura em Farenheit: ")
			leia(tempF)

		tempC = ((tempF - 32) / 1.8)
		escreva(tempF," Fº = ",tempC," Cº")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 23; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */