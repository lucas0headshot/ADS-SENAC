//Preencher um vetor com números inteiros e ao final informar a quantidade e quais números são pares e ímpares

programa {
	
	funcao inicio() {
	
		inteiro i = 0, num[10], q_impar = 0, q_par = 0, j = 0
		caracter opcao = 'S'
	
		faca {
			limpa()
			escreva("Digite um número: ")
				leia(num[i])
	
			escreva("Deseja continuar(S/N)? ")
					leia(opcao)
	
			i++
		} enquanto (opcao != 'N')
		
		limpa()
		escreva("\n Números Pares: ")
		para(j = 0; j < i; j++){
			se (num[i] % 2 == 0){
				escreva("\n",num[j])
				q_par++
			}
		}
			escreva("\n Quantidade de Pares: ",q_par)
			
		escreva("\n Números ìmpares: ")
		para(j = 0; j < i; j++){
			se (num[j] % 2 == 1){
				escreva("\n",num[j])
				q_impar++
			}
		}
		
		escreva("\n Quantidade de Ímpares: ",q_impar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 656; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */