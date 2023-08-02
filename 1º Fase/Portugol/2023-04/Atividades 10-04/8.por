programa
{
	//Ler o nome, sexo e idade de uma quantidade  de pessoas, ao final informar quem é do sexo masculino e tem mais de 21 anos
	
	funcao inicio()
	{
		inteiro idade[22], q = 0, i = 0
		cadeia nome[22], sexo[22]

		escreva("Deseja cadastrar quantas pessoas? ")
			leia(q)

		para (i = 1; i<=q; i++){
				limpa()
				escreva("Digite o nome da ",i,"º: ")
					leia(nome[i])
				escreva("Digite o sexo(F/M): ")
					leia(sexo[i])
				escreva("Digite a idade: ")
					leia(idade[i])
		}

		limpa()
		escreva("\nSexo M: ")
			para (i = 1; i<=q; i++){
				se (sexo[i] == "M"){
					se (i == q){
						escreva(nome[i])
					}senao{
						escreva(nome[i],", ")	
					}
				}
			}

		escreva("\n+ 21 anos: ")
			para (i = 1; i<=q; i++){
				se (idade[i] > 21){
					se (i == q){
						escreva(nome[i])
					}senao{
						escreva(nome[i],", ")	
					}
				}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 683; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 7, 10, 5}-{nome, 8, 9, 4}-{sexo, 8, 19, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */