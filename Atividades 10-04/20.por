programa
{
	//Ler o nome, salário e quantidade de filhos de uma pessoa, ao final informar a média salarial das pessoas com 1 e  2 filhos separadamente
	
	funcao inicio()
	{
		inteiro i = 1, q_filho[12], q = 0
		real sal_medio_2f = 0.00, sal_medio_1f = 0.00, salario[12]
		cadeia nome[12]
		caracter resposta = 'S'

		faca{
			limpa()
			escreva("Digite o nome da ",i,"º pessoa: ")
				leia(nome[i])
			escreva("Digite o salário: ")
				leia(salario[i])

			enquanto ((q_filho[i] < 1) ou (q_filho[i] > 2)){
				escreva("Digite o número de filhos(1 ou 2): ")
					leia(q_filho[i])
			}

			se (q_filho[i] == 2){
				sal_medio_2f = (sal_medio_2f + salario[i])
			}senao{
				sal_medio_1f = (sal_medio_1f + salario[i])
			}

			i++
			q++

			escreva("Deseja continuar? ")
				leia(resposta)
		}enquanto (resposta != 'N')
		
		limpa()
		
		se (sal_medio_2f > sal_medio_1f){
			para (i = 1; i <= q; i++){
				se ((i == q) e (q_filho[i] == 2)){
					escreva(nome[i])
				}senao se (q_filho[i] == 2){
					escreva(nome[i],", ")
				}
			}
			escreva(" possuei 2 filhos e a maior média salarial!")
		}senao{
			para (i = 1; i <= q; i++){
				se ((i == q) e (q_filho[i] == 1)){
					escreva(nome[i])
				}senao se (q_filho[i] == 1){
					escreva(nome[i],", ")
				}
			}
			escreva(" possui 1 filho e a maior média salarial!")
		}
		
		escreva("\nMédia salarial pessoas c/ 2 filhos: ",sal_medio_2f / i)
		escreva("\nMédia salarial pessoas c/ 1 filho: ",sal_medio_1f / i)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {sal_medio_2f, 8, 7, 12}-{sal_medio_1f, 8, 28, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */