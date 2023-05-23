programa
{
	funcao inicio()
	{
		cadeia nome[10], vendedorMaiorValor = "A", vendedorMenorValor = "B"
		real venda[10]
		real comissao[10], totalVendas = 0.00, maiorValor = 0.00, menorValor = 0.00, valorComissao = 0.00
		inteiro i = 0, j = 0
		caracter opcao = 'S'

		faca {
			limpa()
			escreva("Digite o nome do vendedor: ")
				leia(nome[i])
			
			escreva("Digite o percentual de comissao: ")
				leia(comissao[i])

			escreva("Digite o total de vendas: ")
				leia(venda[i])

			escreva("Deseja continuar(S/N)? ")
				leia(opcao)

			i++
		} enquanto (opcao != 'N') 
		
		
		para (j = 0; j <= i; j++) {
			totalVendas = totalVendas + venda[i]
			valorComissao = venda[i] * comissao[i]
			
			se (valorComissao > maiorValor) {
				maiorValor = valorComissao
				vendedorMaiorValor = nome[i]
			} senao se (valorComissao < menorValor) {
				menorValor = valorComissao
				vendedorMenorValor = nome[i]
			}
		}
		
		limpa()
		escreva("\nRelatório de Vendas")
		escreva("\n-------------------")
		para (j = 0; j <= i; j++) {
			escreva("Vendedor: ", nome[i],"\n")
			escreva("Total de Vendas: R$", venda[i],"\n")
			escreva("Comissão: R$", venda[i] * comissao[i],"\n")
			escreva("\n-------------------")
		}
		
		escreva("\nTotal das Vendas de todos os Vendedores: R$", totalVendas)
		escreva("\nMaior Valor a Receber: R$", maiorValor)
		escreva("\nVendedor com Maior Valor a Receber: ", vendedorMaiorValor)
		escreva("\nMenor Valor a Receber: R$", menorValor)
		escreva("\nVendedor com Menor Valor a Receber: ", vendedorMenorValor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 925; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */