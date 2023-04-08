programa
{
	//Ler números e informar a raiz quadrada de cada um

	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		inteiro num[12], i = 1, q_digitada = 0
		cadeia resposta

		faca{
			escreva("Digite um número: ")
				leia(num[i])
			escreva("Deseja continuar(S/N)? ")
				leia(resposta)
			i = i + 1
			q_digitada = q_digitada + 1
			limpa()
		}enquanto (resposta != "N")

		para (i = 1; i<=q_digitada; i++){
			escreva("\n",num[i],"√2 = ",Mat.raiz(num[i], 2))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 9, 10, 3}-{i, 9, 19, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */