programa
{
	//Número 27
	//Ler o custo de um espetáculo, o preço dos convites e calcular a quantidade de convites necessários para atingir o valor do espetáculo
	
	funcao inicio()
	{
		real pEspetaculo, pConvite, qConvite, vArrecadado
		
		escreva("Digite o custo do espetáculo: ")
			leia(pEspetaculo)
		escreva("Digite o preço do convite: ")
			leia(pConvite)

		qConvite = 0
		vArrecadado = 0 
		
		enquanto (vArrecadado < pEspetaculo){
			vArrecadado = (vArrecadado + pConvite)
			qConvite = (qConvite + 1)
		}

		escreva("Convites necessários p/ atingir o custo(",pEspetaculo,"R$): ",qConvite)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 572; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 */