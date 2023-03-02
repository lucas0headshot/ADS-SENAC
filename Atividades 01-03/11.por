programa
{
	//Número 10
	//Ler três notas e seus respectivos pesos e imprimir a média ponderada dessas notas
	
	funcao inicio()
	{
		real n1, n2, n3, p1, p2, p3, media

		escreva("Digite a primeira nota: ")
			leia(n1)
		escreva("Digite o peso da primeira nota: ")
			leia(p1)
		escreva("Digite a segunda nota: ")
			leia(n2)
		escreva("Digite o peso da segunda nota: ")
			leia(p2)
		escreva("Digite a terceira nota: ")
			leia(n3)
		escreva("Digite o peso da terceira nota: ")
			leia(p3)

		media = ((n1 * p1 + n2 * p2 + n3 * p3) / 10)
		escreva("Media ponderada: ",media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 579; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */