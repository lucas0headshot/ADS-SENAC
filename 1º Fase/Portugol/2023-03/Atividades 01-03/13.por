programa
{
	//Número 12
	//Calcular a quantidade de latas de tinta necessárias para pintar uma parede
	
	funcao inicio()
	{
		real altura, largura, qLatas, mQuadrado, consumoMquadrado, qTinta, rendimento
		
		escreva("Digite o consumo de tinta p/ metro quadrado(Em miligramas): ")
			leia(consumoMquadrado)
		escreva("Digite a quantidade de tinta por lata(Em litros): ")
			leia(qTinta)
		escreva("Digite a altura da parede(Em metros): ")
			leia(altura)
		escreva("Digite a largura da parede(Em metros): ")
			leia(largura)

		
		mQuadrado = (altura * largura)
		rendimento = ((consumoMquadrado * 1000) / mQuadrado)
		qLatas = (qTinta / rendimento)

		escreva("Serão necessárias ",qLatas," latas para pintar ",mQuadrado," metros quadrados")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */