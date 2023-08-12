programa
{
	//ler um quantidade de números e calcular a soma, quantidade, média, maior, meno e % dos ímpares
	
	funcao inicio()
	{
		inteiro soma = 0, num = 0, q_digitada = 0, media = 0, maior = 0, menor = 0, q_impar = 0
		caracter resposta = 'S'

		faca{
			limpa()
			escreva("Digite um número: ")
				leia(num)

			se (q_digitada == 0){
				menor = num
			}

			se (num > maior){
				maior = num
			}
			se (num < menor){
				menor = num
			}

			se (num % 3 == 0){
				q_impar++
			}
			
			q_digitada++
			media = media + num
			soma = soma + num
				
			escreva("Deseja continuar(S/N)? ")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()
		escreva("Dentre os números informados... \n Soma: ",soma," \n Quantidade: ",q_digitada," \n Média: ",media," \n Maior: ",maior," \n Menor: ",menor," \n % de ímpares: ",(q_impar * 100) / q_digitada)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 654; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {soma, 7, 10, 4}-{q_digitada, 7, 29, 10}-{media, 7, 45, 5}-{maior, 7, 56, 5}-{menor, 7, 67, 5}-{q_impar, 7, 78, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */