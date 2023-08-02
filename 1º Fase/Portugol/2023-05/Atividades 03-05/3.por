programa
{
	
	funcao inicio()
	{
		inteiro numeros[5]

		para (inteiro i = 0; i < 5; i++){
			limpa()
			escreva("Digite um número para a posição ",i," do vetor: ")
				leia(numeros[i])
		}

		limpa()
		escreva("Neste vetor")
		para (inteiro i = 0; i < 5; i++){
			escreva("\n Posição ",i," armazena ",numeros[i])
		}

		escreva("\n ")
		
		escreva("Neste vetor, na ordem inversa")
		para (inteiro i = 4; i >= 0; i--){
			escreva("\n Posição ",i," armazena ",numeros[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */