programa
{
	//Ler um valor e calcular o valor final de acordo com a tabela abaixo:
	//Código		Desconto
	//1			0%
	//2			10%
	//3			5%
	
	funcao inicio()
	{
		real valor
		inteiro codigo

		codigo = 0

		escreva("Digite o valor total(R$): ")
			leia(valor)
		
		enquanto ((codigo < 1) ou (codigo > 3)){
			escreva("Digite o código(1 = Comum, 2 = Funcionário, 3 = VIP: ")
				leia(codigo)
		}

		escolha (codigo){
			caso 1:
				escreva("Valor final: ",valor)
				pare
			caso 2:
				escreva("Valor final(desconto de 10%): ",valor - (valor * 0.1))
				pare
			caso 3:
				escreva("Valor final(desconto de 5%): ",valor - (valor * 0.05))
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 133; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */