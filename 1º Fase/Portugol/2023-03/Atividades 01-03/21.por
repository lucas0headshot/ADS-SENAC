programa
{
	//Número 20
	//Ler a pressão, volume e temperatura de um pneu, e calcular a massa de ar desse pneu
	
	funcao inicio()
	{
		real p, v, t, m

		escreva("Digite a pressao deste pneu: ")
			leia(p)
		escreva("Digite o volume: ")
			leia(v)
		escreva("Digite a temperatura: ")
			leia(t)

		m = ((p * v) / ( 0.37 * (t + 460)))
		escreva("Massa de ar: ",m)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */