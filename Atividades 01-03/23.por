programa
{
	//Número 22
	//Ler uma medida em pés e converta em polegadas, jardas e milhas
	
	funcao inicio()
	{
		real pes, polegadas, jardas, milhas

		escreva("Digite uma medida em pés: ")
			leia(pes)

		//Arrumar
		polegadas = (pes * 12)
		jardas = (pes / 3)
		milhas = (jardas / 1760)
		
		escreva(pes,"pés = ",polegadas," polegadas")
		escreva(pes,"\npés = ",jardas," jardas")
		escreva(pes,"\npés = ",milhas," milhas")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 221; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */