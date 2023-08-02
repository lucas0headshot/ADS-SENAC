programa {
	funcao inicio(){
		cadeia nome[10], vMaior, vMenor
		real venda[10], comissao[10], vTotal = 0.00, maior = 0.00, menor = 0.00, vComissao = 0.00
		inteiro i = 0
		
		para (i = 0; i < 10; i++) {
			limpa()
			escreva("\nDigite o nome: ")
				leia(nome[i])
			escreva("\nDigite o % de comissao: ")
				leia(comissao[i])
		}
		
		para (i = 0; i < 10; i++) {
			limpa()
			escreva("\nDigite o total de vendas de ",nome[i],": ")
				leia(venda[i])
		}
		
		menor = venda[0] * comissao[0]
		vMaior = nome[0]
		vMenor = nome[0]
		
		para (i = 0; i < 10; i++) {
			vTotal += venda[i]
			vComissao = venda[i] * comissao[i]
			
			se (vComissao > maior) {
				maior = vComissao
				vMaior = nome[i]
			} senao se (vComissao < menor) {
				menor = vComissao
				vMenor = nome[i]
			}
		}

		limpa()
		escreva("\nRelatório")
		escreva("\n-")
		para (i = 0; i < 10; i++) {
			escreva("\nVendedor: ",nome[i])
			escreva("\nTotal vendas: ",venda[i])
			escreva("\nComissão: ",venda[i] * comissao[i])
		}
		
		escreva("\nTotal de vendas: ",vTotal)
		escreva("\nMaior valor: ",maior)
		escreva("\nVendedor que receberá mais: ",vMaior)
		escreva("\nMenor valor: ",menor)
		escreva("\nVendedor que receberá menos: ",vMenor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 677; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */