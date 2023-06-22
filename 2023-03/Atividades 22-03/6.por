programa
{
	//Ler um salário e calular o valor reajustado de acordo com a tabela abaixo:
	//Até 1.500 = 35%
	//Acima de 1.500 = 15%
	
	funcao inicio()
	{
		real sal

		escreva("Digite o salário(Em R$): ")
			leia(sal)

		se (sal <= 1500){
			escreva(sal," + 35% = ",sal * 1.35)
		}senao{
			escreva(sal," + 15% = ",sal * 1.15)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */