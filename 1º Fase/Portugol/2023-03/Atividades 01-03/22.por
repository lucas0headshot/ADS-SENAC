programa
{
	//Número 21
	//Ler os coeficientes a, b, c, d, e & f, e calcular e imprimir os valores de x e y
	
	funcao inicio()
	{
		real x, y, a, b, c , d, ee, f

		escreva("Digite o valor de a: ")
			leia(a)
		escreva("Digite o valor de b: ")
			leia(b)
		escreva("Digite o valor de c: ")
			leia(c)
		escreva("Digite o valor de d: ")
			leia(d)
		escreva("Digite o valor de e: ")
			leia(ee)
		escreva("Digite o valor de f: ")
			leia(f)

		x = ((c * ee) - (b * f) / ((a * ee) - (b * d)))
		y = ((a * f) - (c * d) / ((a * ee) - (b * d)))
		escreva("x = ",x)
		escreva("\ny = ",y)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */