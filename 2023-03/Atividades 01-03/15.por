programa
{
	//Número 14
	//Ler um salário, calcular e imprimir um novo salário com aumento de 25%
	
	funcao inicio()
	{
		real salario,  salCaumento, aumento

		escreva("Digite um salário: ")
			leia(salario)
		escreva("Digite o aumento(Em %): ")
			leia(aumento)

		salCaumento = (salario + (salario * (aumento / 100)))
		escreva("Salário de ",salario,"R$ passou a ser ",salCaumento,"R$, por causa do aumento de ",aumento,"%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 393; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */