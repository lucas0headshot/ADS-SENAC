programa{
	//Número 4

    funcao inicio(){
    	inteiro M[5][5], troca[5], troca2[5], i = 0, j = 0

        para (i = 0; i < 5; i++){
            para (j = 0; j < 5; j++){
            	limpa()
            	escreva("Digite um número: ")
            		leia(M[i][j])                
            }
        }
       
        para(i = 0; i < 5; i++){
            troca[i] = M[1][i]
        }

        para (i = 0; i < 5; i++){
            troca[i] = M[i][3]
        }

        para (i = 0; i < 5; i++){
            M[1][i] = M[3][i]
        }

        para(i=0;i<5;i++){
            M[3][i] = troca[i]

        }


        para(i = 0; i < 5; i++){
            M[i][2] = M[i][3]
        }

        para(i = 0; i < 5; i++){
            M[i][0] = troca2[i]
        }
        

        limpa()
        escreva("Trocando posições...")
        para(i = 0; i < 5; i++){
        	escreva(i," ")
            para(j = 0; j < 5; j++){
                escreva("|",M[i][j],"|\t")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 993; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */