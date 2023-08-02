programa
{
	//Calcular o salário atual de um funcionário, baseando-se em um aumento de porcentual por ano
	
	funcao inicio()
	{
		cadeia nome
		real sal = 0.00, p = 0.00
		inteiro ano = 0, ano_inicial = 0, ano_atual = 0
	
		escreva("Digite o nome: ")
			leia(nome)
		escreva("Digite o salário inicial: ")
			leia(sal)
		escreva("Digite o ano em que ",nome," começou a trabalhar: ")
			leia(ano_inicial)
		escreva("Digite o ano atual: ")
			leia(ano_atual)

		enquanto (ano <= ano_atual){
			se (ano == (ano_inicial + 1)){
				p += 0.015
				sal += sal * p
			}senao{
				sal += sal * (p * 2)
			}

			ano++
		}

		limpa()
		escreva(nome," seu salário atual é ",sal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 612; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {p, 8, 19, 1}-{sal, 8, 7, 3}-{ano, 9, 10, 3}-{ano_atual, 9, 36, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */