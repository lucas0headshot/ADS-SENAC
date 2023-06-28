programa
{
	//Ler dois números e possibilitar ao usuário escolher o que fazer com aqueles números
	
	funcao inicio()
	{
		inteiro num, num2, opcao

		escreva("Digite o primeiro número: ")
			leia(num)
		escreva("Digite o segundo número: ")
			leia(num2)
		
		opcao = 1

		enquanto ((opcao >= 1) e (opcao <= 5)){
			escreva("\n1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n5 - Sair\nO que deseja fazer com esses números? ")
				leia(opcao)
				
			se (opcao == 1){
				escreva("\n",num," + ",num2," = ",num + num2)
			}senao se (opcao == 2){
				escreva("\n",num," - ",num2," = ",num - num2)
			}senao se (opcao == 3){
				escreva("\n",num," * ",num2," = ",num * num2)
			}senao se (opcao == 4){
				escreva("\n",num," / ",num2," = ",num / num2)
			}senao se (opcao == 5){
				retorne
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */