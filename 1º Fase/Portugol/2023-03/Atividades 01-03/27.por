programa
{
	//Número 26
	//Ler o valor do salário mínimo, quantidade quilowatt consumidos e calcular o preço de cada quilowatt, o valor total a ser pago e o valor total com 15% de desconto
	
	funcao inicio()
	{
		real salMinimo, qQuilowatt, pQuilowatt, vTotal, vTcDesconto, pDesconto
	
		escreva("Digite o salário mínimo(Atualmente): ")
			leia(salMinimo)
		escreva("Digite a quantidade de qW(Quilowatt) consumidos: ")
			leia(qQuilowatt)
		escreva("Digite a % de desconto(Se houver): ")
			leia(pDesconto)

		pQuilowatt = (salMinimo / 5)
		vTotal = (qQuilowatt * pQuilowatt)
		vTcDesconto = ((qQuilowatt * pQuilowatt) - ((qQuilowatt * pQuilowatt)  * (pDesconto / 100)))

		escreva("1 qW = ",pQuilowatt,"R$")
		escreva("\nValor a ser pago: ",vTotal,"R$")
		escreva("\nValor a ser pago(C/ ",pDesconto,"% de desconto): ",vTcDesconto,"R$")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 673; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */