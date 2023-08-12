programa
{
	//Ler o número de veículos de passeio e de acidentes de trânsito de uma quantidade de cidades, e ao final calcular e informar o maior e menor índice de acidentes, média de veículos e média de acidentes
	//nas cidades com menos de 2000 veículos de passeio
	
	funcao inicio()
	{
		inteiro i = 1, estatisticas[6][4], q = 0, maior_cod = 0, menor_cod = 0, media_veiculos = 0, media_acid = 0
		real maior = 0.00, menor = 0.00
		caracter resposta  = 'S'

		faca{
			limpa()
			escreva("Digite o código da  ",i," cidade: ")
				leia(estatisticas[i][0])
			escreva("Digite o número de veículos de passeio: ")
				leia(estatisticas[i][1])
			escreva("Digite o número de acidentes de trânsito: ")
				leia(estatisticas[i][2])

			estatisticas[i][3] =  estatisticas[i][1] / estatisticas[i][1]

			se (i == 1){
				menor = estatisticas[i][3]
				menor_cod = estatisticas[i][0]
			}

			se (estatisticas[i][3] > maior){
				maior = estatisticas[i][3]
				maior_cod = estatisticas[i][0]
			}
			se (estatisticas[i][3] < menor){
				menor = estatisticas[i][3]
				menor_cod = estatisticas[i][0]
			}

			se (estatisticas[i][1] < 2000){
				media_acid += estatisticas[i][2]
			}

			media_veiculos += estatisticas[i][1]
			
			q++
			i++
			
			escreva("\nDeseja continuar(S/N)?")
				leia(resposta)
		}enquanto (resposta != 'N')

		limpa()
		escreva("\nCidade ",maior_cod," possui maior índice de acidentes: ",maior)
		escreva("\nCidade ",menor_cod," possui menor índice de acidentes: ",menor)
		escreva("\nMédia de veículos de todas as cidades: ",media_veiculos / q)
		escreva("\nMédia de acidentes de cidades c/ < 2000 veículos: ",media_acid / q)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 880; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {estatisticas, 8, 17, 12}-{maior, 9, 7, 5}-{menor, 9, 21, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */