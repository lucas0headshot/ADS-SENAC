programa
{
	//Ler o código do pedido e quantidade, calcular e informar o valor total de acordo com a tabela abaixo:
	//Código		Produto			Preço
	//1			Cachorro Quente	R$5,50
	//2			Misto quente		R$4,50
	//3			Hamburguer		R$6
	//4			Salgado assado		R$6
	//5 			Salgado frito		R$4,50
	//6 			Refri lata		R$5
	//7			Refri 600ml		R$7
	//8			Café pequeno		R$4
	//9			Café médio		R$5
	
	funcao inicio()
	{
		inteiro codigo, q

		codigo = 0
		q = 0

		enquanto ((codigo < 1) ou (codigo > 9)){
			escreva("Digite o codigo(1-9): ")
				leia(codigo)
		}

		enquanto (q < 1){
			escreva("Digite a quantidade: ")
				leia(q)
		}

		escolha (codigo){
			caso 1:
				escreva("Cachorro quente(R$5,50)")
				escreva("\nValor total: ",q * 5.50)
				pare
			caso 2:
				escreva("Misto quente(R$4,50)")
				escreva("\nValor total: ",q * 4.50)
				pare
			caso 3:
				escreva("Hamburguer(R$6)")
				escreva("\nValor total: ",q * 6)
				pare
			caso 4:
				escreva("Salgado assado(R$6)")
				escreva("\nValor total: ",q * 6)
				pare
			caso 5:
				escreva("Salgado frito(R$4,50)")
				escreva("\nValor total: ",q * 4.50)
				pare
			caso 6:
				escreva("Refrigerante lata(R$5)")
				escreva("\nValor total: ",q * 5)
				pare
			caso 7:
				escreva("Refrigerante 600ml(R$7)")
				escreva("\nValor total: ",q * 7)
				pare
			caso 8:
				escreva("Café pequeno(R$4)")
				escreva("\nValor total: ",q * 4)
				pare
			caso 9:
				escreva("Café médio(R$5)")
				escreva("\nValor total: ",q * 5)
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */