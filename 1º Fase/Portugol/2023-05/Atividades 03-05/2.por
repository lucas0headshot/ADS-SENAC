programa
{
	//Ler 7 números e armazená-los em um vetor, ao final imprimi-los
	
	funcao inicio()
	{
		inteiro numeros[7]

		para (inteiro i = 0; i < 7; i++){
			limpa()
			escreva("Digite um número para a posição ",i," do vetor: ")
				leia(numeros[i])
		}

		limpa()
		escreva("Neste vetor")
		para (inteiro i = 0; i < 7; i++){
			escreva("\n Posição ",i," armazena ",numeros[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 79; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 7, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */