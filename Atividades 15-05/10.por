//Ler o nome e média de uma quantidade de alunos, ao final informar a pessoa que possui a maior média

programa {
	
	funcao inicio() {
		cadeia nome[7]
		inteiro i = 0, j = 0, media[7], med[7], maior = 0
		caracter opcao = 'S'
		
		faca {
			limpa()
			escreva("Digite um nome: ")
				leia(nome[i])
			escreva("Digite a média: ")
				leia(media[i])
			
			med[j] = media[i]
			med[j] = 10 - med[j]


			escreva("Deseja continuar(S/N)?")
				leia(opcao)

			i++
			j++
		} enquanto (opcao != 'N')
		
		para (i = 0; i <= j; i++) {
			se (media[i] > media[maior]) {
				maior = i
			}
		}	
		
		escreva("\n",nome[maior]," possui a maior média: ",media[maior])
		para (i = 0; i <= j; i++) {
			se (media[i] < 7) {
				escreva("\n",nome[i]," precisa de ",med[i]," para ser aprovado")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 6, 9, 4}-{media, 7, 24, 5}-{med, 7, 34, 3}-{maior, 7, 42, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */