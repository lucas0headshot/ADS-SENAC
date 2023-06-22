programa
{
	//Ler o número de habitantes, número de nascidos e óbitos, e calcular a taxa da natalidade ou mortalidade
	
	funcao inicio()
	{
		inteiro natalidade, mortalidade, num_habitantes, num_nascidos, num_obitos, opcao

		escreva("Digite o número de habitantes: ")
			leia(num_habitantes)

		escreva("1 - Calcular taxa de mortalidade \n2 - Calcular taxa de natalidade")
		escreva("\n*O que deseja fazer? ")
			leia(opcao)

		escolha (opcao){
			caso 1:
				escreva("Digite o número de óbitos: ")
					leia(num_obitos)

				mortalidade = (num_obitos * 1000) / num_habitantes

				escreva("Taxa de mortalidade: ",mortalidade)
				pare
			caso 2:
				escreva("Digite o número de nascimentos: ")
					leia(num_nascidos)

				natalidade = (num_nascidos * 1000) / num_habitantes

				escreva("Taxa de natalidade: ",natalidade)
				pare
			caso contrario:
				escreva("Opção inválida!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 117; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */