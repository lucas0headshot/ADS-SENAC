programa
{
	//Ler três valores e informar o tipo de triângulo
	
	funcao inicio()
	{
		real v1, v2, v3

		escreva("Digite o primeiro valor: ")
			leia(v1)
		escreva("Digite o segundo valor: ")
			leia(v2)
		escreva("Digite o terceiro valor: ")
			leia(v3)

		se ((v1 < v2 + v3) e (v2 < v1 + v3) e (v3 < v1 + v2)){ //Precisa que cada um dos lados seja menor que a soma dos dois outros lados
			se ((v1 == v2) e (v2 == v3)){
				escreva("Esses valores podem formar um triângulo equilátero!")
			}senao se ((v1 == v2) e (v1 == v3) e (v2 == v3)){
				escreva("Esses valores podem formar um triângulo isósceles!")
			}senao se ((v1 != v2) e (v2 != v3)){
				escreva("Esses valores podem formar um triângulo escaleno!")
			}
		}senao{
			escreva("Esses valores não podem ser de um triângulo...")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 604; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */