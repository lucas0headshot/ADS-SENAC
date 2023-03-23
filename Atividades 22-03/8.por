programa
{
	
	funcao inicio()
	{
		real custo

		escreva("Digite o custo de fábrica(Em R$): ")
			leia(custo)

		se (custo <= 15000){
			escreva("Preço final: ",custo * 1.05) //5% do distribuidor
		}senao se (custo >= 15000 e custo <= 25000){
			escreva("Preço final: ",custo * 1.25) //10% distribuidor + 15% impostos
		}senao{
			escreva("Preço final: ",custo * 1.35) //15% distribuidor + 20% impostos
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 402; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */