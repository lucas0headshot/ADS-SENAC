programa
{
	//Núemero 15
	//Ler o salário, porcentual de aumento e calcule e imprima o valor do aumento, e o novo salário
	
	funcao inicio()
	{
		real salario,  salCaumento, aumento, aumentoSal

		escreva("Digite um salário: ")
			leia(salario)
		escreva("Digite o aumento(Em %): ")
			leia(aumento)

		aumentoSal = (salario * (aumento / 100))
		salCaumento = (salario + (salario * (aumento / 100)))
		escreva("Salário s/ aumento: ",salario,"R$")
		escreva("\nSalario c/ aumento: ",salCaumento,"R%")
		escreva("\nAumento: ",aumentoSal,"R$ (Fruto de ",aumento,"%)")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */