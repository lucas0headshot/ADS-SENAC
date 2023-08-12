programa
{
	//Ler uma quantidade de números e informar o triplo de cada número digitado
	
	funcao inicio()
	{
		inteiro q, num[12], i = 0

		escreva("Quantos números deseja digitar? ")
			leia(q)

		para (i = 1; i<=q; i++){
			limpa()
			escreva("\n Digite o ",i,"º número: ")
				leia(num[i])
		}
		
		limpa()
		escreva("O triplo dos números digitados:")
		para (i = 1; i<=q; i++){
			escreva("\n",num[i]," * 3 = ",num[i] * 3)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {q, 7, 10, 1}-{num, 7, 13, 3}-{i, 7, 22, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */