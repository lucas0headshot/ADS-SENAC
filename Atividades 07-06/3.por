programa{
    
    funcao inicio(){
        inteiro M[5][5]={{15,16,17,18,19},{1,2,3,4,5},{8,9,6,7,10},{11,12,13,14,21},{51,52,53,54,55}}
        inteiro c,l,aux=0,aux1=0
        
        para(c=0;c<5;c++){
            aux=M[2][c]
            M[2][c]=M[4][c]
            M[4][c]=aux
        }
        
        para(l=0;l<5;l++){
            aux1=M[l][4]
            M[l][4]=M[l][1]
            M[l][1]=aux1
        }
        
        para(l=0;l<5;l++){
            para(c=0;c<5;c++){
                escreva(M[l][c]," ")
            }
            escreva("\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 569; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */