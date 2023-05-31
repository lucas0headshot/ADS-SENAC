programa {
	
	funcao inicio() {
		cadeia nome[7]
		inteiro i = 0, j = 0, maior = 0
		real media[7], med[7]
		
		para (i = 0; i < 7; i++) {
			limpa()
			escreva("Digite o nome: ")
				leia(nome[i])
			escreva("\nDigite a media: ")
				leia(media[i])

			
			med[j] = media[i]
			med[j] = 10 - med[j]
			j++
		}
		
		para (j = 1; j < 7; j++) {
			se (media[j] > media[maior]) {
				maior = j
			}
		}
			
		escreva("\nO aluno com maior média: ",nome[maior],"(",media[maior],")")
		para (i = 0; i < 7; i++) {
			se (media[i] < 7) {
				escreva("\n",nome[i]," precisa de ",med[i]," para ser aprovado!")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 212; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */