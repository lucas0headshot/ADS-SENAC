programa
{
	//Ler o valor, forma de pagamento e calcular o valor final de acordo com a tabela abaixo:
	//Forma	Desconto
	//1		10%
	//2		0%
	
	funcao inicio()
	{
		inteiro opcao
		real valor

		opcao = 0

		escreva("Digite o valor: ")
			leia(valor)

		enquanto ((opcao < 1) ou (opcao > 2)){
			escreva("Digite a forma de pagamento(1 = À vista, 2 = À prazo): ")
				leia(opcao)
		}

		escolha (opcao){
			caso 1:
				escreva("Valor final(Desconto de 10%): ",valor - (valor * 0.1))
				pare
			caso 2:
				escreva("Valor final: ",valor)
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 138; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */