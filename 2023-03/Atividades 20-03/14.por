programa
{
	
	funcao inicio()
	{
		real p_Terra, p_Mercurio, p_Venus, p_Jupiter

		escreva("Digite o peso na terra: ")
			leia(p_Terra)

		p_Mercurio = (p_Terra / 10) * 0.37
		p_Venus = (p_Terra / 10) * 0.37
		p_Jupiter = (p_Terra / 10) * 2.64

		escreva(p_Terra," na terra = ",p_Mercurio," em Mercúrio!")
		escreva("\n",p_Terra," na terra = ",p_Venus," em Vênus!")
		escreva("\n",p_Terra," na terra = ",p_Jupiter," em Júpiter!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */