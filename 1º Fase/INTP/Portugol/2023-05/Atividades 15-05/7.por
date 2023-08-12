//Ler o nome e salário de um funcionário, calcular e imprimir o salário reajustado com 8%

programa {
		funcao inicio(){
		
			inteiro i = 0, j = 0
			real sal[20], sal_rj[20]
			cadeia nome[20]
			caracter opcao = 'S'
			
		faca {
			limpa()
			escreva("Digite o nome: ")
				leia(nome[i])
			escreva("Digite o salário: ")
				leia(sal[i])

			escreva("Deseja continuar(S/N)? ")
				leia(opcao)

			
			sal_rj[i] = sal[i] + (sal[i] * 0.08)
			i++
		} enquanto (opcao != 'N')

			limpa()
			escreva("\n Reajustes...")
			para (j = 0; j < i; j++){
				escreva("\n",nome[j]," teve seu salário reajustado de R$",sal[j]," para R$",sal_rj[j]," (Fruto de 8%)")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 535; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */