programa
{
	//Ler o salário bruto de uma quantidade de pessoas e informar o valor da alíquota de IR conforme a tabela abaixo:
	//Salário			Alíquota
	//< 990			isento
	//Entre 990 e 2500	10%
	//> 2500			15%
	
	funcao inicio()
	{
		cadeia nome
		real salario = 0.00
		caracter resposta = 'S'
	
		faca{
			limpa()
			escreva("Digite o nome: ")
				leia(nome)
			escreva("Digite o salário bruto: ")
				leia(salario)

			limpa()
			escreva("Nome: ",nome," \n Salário: ",salario)
			se (salario < 999.90){
				escreva("\n IR: isento")
			}senao se (salario >= 990.00 e (salario <= 2500.00)){
				escreva("\n IR(10%): ",salario * 0.1)
			}senao se (salario > 2500.00){
				escreva("\n IR(15%): ",salario * 0.15)
			}
			
			escreva("\n\n Deseja continuar(S/N)? ")
					leia(resposta)
		}enquanto (resposta != 'N')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 315; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 11, 9, 4}-{salario, 12, 7, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */