programa
{
	//Ler o preço e código de origem de um produto. Informar a procedência deste produto de acordo com a tabela abaixo:
	//Código		Procedência
	//1				Sul
	//2				Norte
	//3				Leste
	//4				Oeste
	//5 ou 6			Nordeste
	//7, 8 ou 9		Sudeste
	//entre 10 e 20	Centro-Oeste
	//entre 21 e 30	Nordeste
	
	funcao inicio()
	{
		inteiro cod
		real preco

		escreva("Digite o preço: ")
			leia(preco)
		escreva("Digite o código(1-30): ")
			leia(cod)

		se (cod == 1){
			escreva("Este produto é do Sul do Brasil!")
		}senao se (cod == 2){
			escreva("Este produto é do Norte do Brasil!")
		}senao se (cod == 3){
			escreva("Este produto é do Leste do Brasil!")
		}senao se (cod == 4){
			escreva("Este produto é do Oeste do Brasil!")
		}senao se ((cod == 5) ou (cod == 6)){
			escreva("Este produto é do Nordeste do Brasil!")
		}senao se ((cod == 7) ou (cod == 8) ou (cod == 9)){
			escreva("Este produto é do Sudeste do Brasil!")
		}senao se ((cod >= 10) e (cod <= 20)){
			escreva("Este produto é do Centro-Oeste do Brasil!")
		}senao se ((cod >= 21) ou (cod <= 30)){
			escreva("Este produto é do Nordeste do Brasil!")
		}senao{
			escreva("Código inválido!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */