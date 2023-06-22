programa
{
	
	funcao inicio()
	{
		real tempo, velocidade, distancia, litros
		
		escreva("Digite o tempo gasto: ")
			leia(tempo)
		escreva("Digite velocidade média: ")
			leia(velocidade)

		distancia = tempo * velocidade
		litros = distancia / 12

		escreva("Velocidade média: ",velocidade," Km/h")
		escreva("\nTempo gasto: ",tempo," minutos")
		escreva("Distância percorrida: ",distancia)
		escreva("Litros utilizados: ",litros)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 393; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */