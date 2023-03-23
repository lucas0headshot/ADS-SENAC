programa
{
	
	funcao inicio()
	{
		real saldo

		escreva("Digite o saldo médio(Em R$): ")
			leia(saldo)

		se (saldo <= 1999){
			escreva("Saldo médio: ",saldo)
			escreva("\nCrédito especial: ",saldo * 0.1)
		}senao se (saldo >= 2000 e saldo <= 2999){
			escreva("Saldo médio: ",saldo)
			escreva("\nCrédito especial: ",saldo * 0.2)
		}senao se (saldo >= 3000 e saldo <= 3999){
			escreva("Saldo médio: ",saldo)
			escreva("\nCrédito especial: ",saldo * 0.25)
		}senao{
			escreva("Saldo médio: ",saldo)
			escreva("\nCrédito especial: ",saldo * 0.3)
		}
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