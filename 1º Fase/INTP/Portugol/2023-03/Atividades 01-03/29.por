programa
{
	//Número 28
	//Ler o peso de um saco de ração em kg, o peso consumido por cada gato, e calcular o quanto restará no saco após cinco dias
	
	funcao inicio()
	{
		real pSaco, pConsPdia, pCons, qRestante
		inteiro qDias
		
		escreva("Digite o peso do saco de ração(Em Kg): ")
			leia(pSaco)
		escreva("Digite o peso de ração consumida por cada gato(Em gramas): ")
			leia(pCons)
		escreva("Digite a quantidade de dias que você alimentará os gatos: ")
			leia(qDias)

		pConsPdia = (pCons * 2)
		qRestante = ((pSaco * 1000) - (pConsPdia * qDias))
		qRestante = (qRestante / 1000)

		escreva("Seus gatos consomem ",pConsPdia,"g p/ dia")
		escreva("\nApós ",qDias," dias, restará ",qRestante,"Kg no saco de ração")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 592; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */