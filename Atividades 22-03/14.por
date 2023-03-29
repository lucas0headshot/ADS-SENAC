programa
{
	//Ler a altura e sexo de uma pessoa, e informar o peso ideal
		
	funcao inicio()
	{
		real altura
		caracter sexo
		
		escreva("Digite o sexo(M ou F): ")
			leia(sexo)
		escreva("Digite a altura: ")
			leia(altura)

		se (sexo == 'F'){
			escreva("Seu peso ideal: ",(62.1 * altura) - 44.7)
		}senao se (sexo == 'M'){
			escreva("Seu peso ideal: ",(72 * altura) - 58)
		}senao{
			escreva("Sexo inválido...")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 417; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */