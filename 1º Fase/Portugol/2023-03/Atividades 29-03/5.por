programa
{
	//Ler o preço, categoria e situação de um produto, calcular e informar de acordo com a tabela abaixo:
	//Preço	Categoria		% aumento
	//<= 25	 	1			5
	//			2			8
	//			3			10
	//> 25		1			12
	//			2			15
	//			3			18
	
	funcao inicio()
	{
		inteiro categoria = 0
		caracter situacao = 'r'
		real preco

		escreva("Digite o preço: ")
			leia(preco)
		
		enquanto ((categoria < 1) ou (categoria > 3)){
			escreva("Digite a categoria(1, 2 ou 3): ")
				leia(categoria)
		}

		enquanto ((situacao != 'R') e (situacao != 'N')){
			escreva("Digite a situação(R ou N): ")
				leia(situacao)
		}

		se ((preco <= 25) e (categoria == 1)){
			escreva("Preço c/aumento(5%): ",preco + (preco * 0.05))
		}senao se ((preco <= 25) e (categoria == 2)){
			escreva("Preço c/aumento(8%): ",preco + (preco * 0.08))
		}senao se ((preco <= 25) e (categoria == 3)){
			escreva("Preço c/aumento(10%): ",preco + (preco * 0.1))
		}senao se ((preco > 25) e (categoria == 1)){
			escreva("Preço c/aumento(12%): ",preco + (preco * 0.12))
		}senao se ((preco > 25) e (categoria == 2)){
			escreva("Preço c/aumento(15%): ",preco + (preco * 0.15))
		}senao se ((preco > 25) e (categoria == 3)){
			escreva("Preço c/aumento(18%): ",preco + (preco * 0.18))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1243; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */