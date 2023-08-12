programa
{
	//Calcular a diferença em % entre os preços de um produto
	
	funcao real calcularPorcentual(real precoAnterior, real precoAtual){
		retorne ((precoAtual - precoAnterior) / precoAtual) * 100
	}
	
	funcao inicio()
	{
		real precoAnterior, precoAtual
	
		escreva("Digite o preço anterior: ")
			leia(precoAnterior)
		escreva("Digite o preco atual: ")
			leia(precoAtual)

		limpa()
		escreva(precoAnterior," : ",precoAtual," | Acréscimo: ",calcularPorcentual(precoAnterior, precoAtual),"%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 198; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */