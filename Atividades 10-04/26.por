programa
{
	//Ler a idade de uma quantidade de pessoas, calcular e informar a quantidade de pessoas em cada faixa etária, % pessoas na primeira faixa e % pessoas na última faixa
	//Faixa etária		Idade
	//1				Até 15 anos
	//2				De 16 a 30
	//3				De 31 a 45
	//4				De 46 a 60
	//5				> 60
	
	funcao inicio()
	{
		inteiro i = 0, q_pessoas_1 = 0, q_pessoas_2 = 0, q_pessoas_3 = 0, q_pessoas_4 = 0, q_pessoas_5 = 0, idade = 0
		caracter resposta = 'S'
	
		faca{
			limpa()
			escreva("Digite a idade: ")
				leia(idade)

			se (idade <= 15){
				q_pessoas_1++
			}senao se (idade >= 16 e idade <= 30){
				q_pessoas_2++
			}senao se (idade >= 31 e idade <= 45){
				q_pessoas_3++
			}senao se(idade >= 46 e idade <= 60){
				q_pessoas_4++
			}senao se (idade > 60){
				q_pessoas_5++
			}
			
			i++
	
			escreva("Deseja continuar(S/N)?")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()
		escreva("Pessoas 1º faixa(Até 15 anos): ",q_pessoas_1)
		escreva("\nPessoas 2º faixa(De 16 a 30): ",q_pessoas_2)
		escreva("\nPessoas 3º faixa(De 31 a 45): ",q_pessoas_3)
		escreva("\nPessoas 4º faixa(De 45 a 60): ",q_pessoas_4)
		escreva("\nPessoas 5º faixa(> 60): ",q_pessoas_5)
		escreva("\n% 1º faixa: ",(q_pessoas_1 * 100) / i)
		escreva("\n% 5º faixa: ",(q_pessoas_5 * 100) / i)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 476; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */