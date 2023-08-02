programa
{
	funcao inicio()
	{
		inteiro codigo[10], estoque[10] 
		inteiro codCliente, codProduto
		inteiro qtd, p = -1, i

		para (i = 0; i < 2; i++) {
			limpa()
			escreva("\nDigite o código: ")
				leia(codigo[i])
			escreva("\nDigite o estoque: ")
				leia(estoque[i])
		}
		
		faca {
			limpa()
			escreva("\n*Digite 0 para sair*")
			
			escreva("\nDigite o código do cliente: ")
				leia(codCliente)
			
			escreva("\nDigite o código do produto: ")
				leia(codProduto)
			escreva("\nDigite a quantidade: ")
				leia(qtd)
				
			p = -1
			
			para (i = 0; i < 2; i++) {
				se (codigo[i] == codProduto) {
					p = i
					pare
				}
			}
			
			se (p >= 0) {
				se (estoque[p] >= qtd) {
					estoque[p] = estoque[p] - qtd
					escreva("\nPedido atendido")
				} senao {
					escreva("\nEstoque insuficiente")
				}
			} senao {
				escreva("\nCódigo inexistente")
			}
		} enquanto (codCliente != 0)

		limpa()
		escreva("\nEstoques alterados:")
		para (i = 0; i < 2; i++) {
			escreva("\nCódigo: ", codigo[i])
			escreva("\nEstoque: ",estoque[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1066; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */