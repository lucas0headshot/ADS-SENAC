programa
{
	//Ler o nome e peso de duas pessoas e informar quem é o mais gordo(a)
	funcao inicio()
	{
		real peso[2]
		cadeia nome[2]
		inteiro i

		para (i = 0; i < 2; i++){
			escreva("Digite o nome: ")
			leia(nome[i])
			escreva("Digite o peso: ")
			leia(peso[i])
		}

		se (peso[0] > peso[1]){
			escreva(nome[0]," é o mais gordo(a)!")
		}senao{
			escreva(nome[1]," é o mais gordo(a)!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 81; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {peso, 6, 7, 4}-{nome, 7, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */