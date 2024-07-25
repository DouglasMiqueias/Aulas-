programa
{
	
	funcao inicio()
	{
		inteiro matriz[3][3]
		inteiro i,j, maior, iMaior, jMaior

		para(i=0; i < 3; i++){
			
			para(j=0; j<3; j++){
				escreva("Digite o valor para a posição", i," : ", j)
				leia(matriz[i][j])
				
			}
		}
		maior = matriz[0][0]
		iMaior = 0
		jMaior = 0
		//varrer procurando o maior
		para(i=0; i<3; i++){
			para(j=0; j<3;j++){
				se(matriz[i][j] > maior){
					maior = matriz[i][j]
					iMaior = i
					jMaior = j
				}
			}
	}
	escreva("O maior valor da matriz é: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */