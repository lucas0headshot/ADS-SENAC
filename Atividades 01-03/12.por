programa
{
	//Número 11
	//Ler o nome e idade de uma pessoa e imprimir a quantidade de dias de vida que ele possui(aproximado)
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade, dias

		escreva("Digite seu nome: ")
			leia(nome)
		escreva("Digite sua idade: ")
			leia(idade)

		dias = (idade * 365)
		escreva(nome,", você já viveu ",dias," dias!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */