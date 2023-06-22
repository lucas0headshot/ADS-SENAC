programa{
	//Trocar a primeira coluna pela quarta de uma matriz
    
    funcao inicio(){
        inteiro Matriz[5][5]= {{15, 16, 17, 18, 19}, {1, 2, 3, 4, 5}, {8, 9, 6, 7, 10}, {11, 12, 13, 14, 21}, {51, 52, 53, 54, 55}}
        inteiro i = 0, j = 0, troca = 0
        
        para(i = 0; i < 5; i++){
            troca = Matriz[2][i]
            
            Matriz[2][i] = Matriz[4][i]
            Matriz[4][i] = troca
        }
        
        para(i = 0; i < 5; i++){
            troca = Matriz[i][4]
            
            Matriz[i][4] = Matriz[i][1]
            Matriz[i][1] = troca
        }

	   escreva("Trocando colunas... ")   
        para(i = 0; i < 5; i++){
            para(j = 0; j < 5; j++){
                escreva("\n",Matriz[i][j])
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 618; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */