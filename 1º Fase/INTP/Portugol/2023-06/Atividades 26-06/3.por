programa
{
	//Ler o nome, sexo, altura e status físico de 10 pessoas
	
	funcao inicio()
	{
		cadeia NomeSexo[10][2]
		inteiro i = 0, j = 0, status[10]
		inteiro qFeminino = 0, qMasculino = 0
		real Altura[10]
	
		para (i = 0; i < 10; i++) {
			limpa()			
			escreva("\nDigite seu nome: ")
				leia(NomeSexo[i][0])
				
			escreva("\nDigite seu sexo (M ou F): ")
				leia(NomeSexo[i][1])

			escreva("Digite sua altura: ")
				leia(Altura[i])
	
			escreva("Digite seu status físico (1- Bom; 2- Regular; 3-Ruim): ")
				leia(status[i])

			//a)
			se ((NomeSexo[i][1] == "F")  e (Altura[j] > 1.70)) {
				qFeminino++ 
			}
				
			//b)
			se ((NomeSexo[i][1] == "M") e (status[j] == 1)) {
				qMasculino++
			}
		}


		limpa()
		escreva("Quant pessoas feminino c/ altura > 1.70: ",qFeminino)
		escreva("\nQuant pessoas masculino c/ status bom: ",qMasculino)

		escreva("\nPessoas do sexo feminimo: ")
		para (i = 0; i < 10; i++) {
			se (NomeSexo[i][1] == "F") {
				escreva(NomeSexo[i][0],"\t,")
			}
		}
		
		escreva("\nPessoas do sexo masculino: ")
		para (i = 0; i < 10; i++) {
			se (NomeSexo[i][1] == "M") {
				escreva(NomeSexo[i][0],"\t,")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1071; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {NomeSexo, 7, 9, 8}-{status, 8, 24, 6}-{qFeminino, 9, 10, 9}-{qMasculino, 9, 25, 10}-{Altura, 10, 7, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */