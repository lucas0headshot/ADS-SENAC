programa
{
	//Informar a soma  e % dos pares e ímpares no intervalo de 85 a 906

	inclua biblioteca Util
	funcao inicio()
	{
		inteiro i, soma_par = 0, soma_impar = 0, q_par = 0, q_impar = 0, de = 0, ate = 0

		escreva("Imprimir os números")
		escreva("\nDe: ")
			leia(de)
		escreva("\nAte: ")
			leia(ate)

		se (ate < de){
			para (i = de; i >= ate; i--){
				se (i % 2 == 0){
					soma_par = soma_par + i
					q_par++
					escreva("\n",i," é par!")
				}senao{
					soma_impar = soma_impar + i
					q_impar++
					escreva("\n",i," é ímpar!")
				}
				Util.aguarde(3000)
			}
		}senao{
			para (i = de; i <= ate; i++){
				se (i % 2 == 0){
					soma_par = soma_par + i
					q_par++
					escreva("\n",i," é par!")
				}senao{
					soma_impar = soma_impar + i
					q_impar++
					escreva("\n",i," é ímpar!")
				}
			}
			Util.aguarde(3000)
		}
		

		limpa()
		escreva("\nSoma dos pares: ",soma_par)
		escreva("\n% dos pares: ",(q_par * 100) / i)
		escreva("\nSoma dos Ímpares: ",soma_impar)
		escreva("\n% dos pares: ",(q_impar * 100) / i)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 576; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 8, 10, 1}-{soma_par, 8, 13, 8}-{soma_impar, 8, 27, 10}-{q_par, 8, 43, 5}-{q_impar, 8, 54, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */