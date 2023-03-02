programa
{
	//Número 16
	//Ler um valor e calcular o valor total considerando 10% de gorjeta ao garçom 
	
	funcao inicio()
	{
		real valor, vTotal, pGarcom, gorjeta

		escreva("Digite o valor: ")
			leia(valor)
		escreva("Digite a % de gorjeta do Garçom: ")
			leia(pGarcom)

		gorjeta = (valor * (pGarcom / 100))
		vTotal = (valor + gorjeta)
		escreva("Valor s/ gorjeta: ",valor,"R$")
		escreva("\nValor total(c/ gorjeta): ",vTotal,"R$")
		escreva("\nGorjeta: ",gorjeta,"R$ (Fruto de ",pGarcom,"%)")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */