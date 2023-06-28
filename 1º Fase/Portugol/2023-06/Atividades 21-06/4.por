programa
{
	
	funcao real calcularMedia(caracter letra, real nota1, real nota2, real nota3){
		se (letra == 'A'){
			retorne (nota1 + nota2 + nota3) / 3
		} senao {
			retorne (nota1 * 5 + nota2 * 3 + nota3 * 2) / (5 + 3 + 2)
		}
	}
	
	funcao inicio()
	{
		caracter letra
		real nota1, nota2, nota3
	
		escreva("Digite a letra(A ou P): ")
			leia(letra)
		escreva("Digite a 1º nota: ")
			leia(nota1)
		escreva("Digite a 2º nota: ")
			leia(nota2)
		escreva("Digite a 3º nota: ")
			leia(nota3)

		limpa()
		se (letra == 'A'){
			escreva("Media aritmética: ",calcularMedia(letra, nota1, nota2, nota3))
		} senao se (letra == 'P'){
			escreva("Media ponderada: ",calcularMedia(letra, nota1, nota2, nota3))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 719; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */