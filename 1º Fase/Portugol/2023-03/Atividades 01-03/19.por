programa
{
	//Número 18
	//Ler os dados de um trapézio e calcular a área
	
	funcao inicio()
	{
		real bMaior, bMenor, altura, area
		
		escreva("Digite a altura do trapézio: ")
			leia(altura)
		escreva("Digite a base maior: ")
			leia(bMaior)
		escreva("Digite a base menor: ")
			leia(bMenor)

		area = (((bMaior + bMenor) * altura) / 2)
		escreva("Área: ",area)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */