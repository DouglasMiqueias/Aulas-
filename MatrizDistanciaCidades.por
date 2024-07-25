programa
{
	
	funcao inicio()
	{
		inteiro matriz[4][4]
		inteiro i,j, maior, iMaior, jMaior
		inteiro cidade1, cidade2, distancia=1

		enquanto(distancia == 1){
		escreva("Digite a primeira cidade")
		leia(cidade1)
		escreva("Digite a primeira cidade")
		leia(cidade2)
		
		//validação cidades diferentess
		
		escreva("Digite a distancia entre as cidades primeira cidade")
		leia(distancia)

		//preencher espelhado
		
		matriz[cidade1][cidade2] = distancia

		escreva("Deseja inserir uma nova distancia? 1- Sim ou qualquer outro valor para sair")
	}

		para(i=0; i < 4; i++){
			para(j=0; j<4; j++){
				se(i == j){
					matriz[i][j] = 0
			}senao{
				escreva("Escreva a distância entre as cidades ", i," : ", j, ":")
				leia(matriz[i][j])
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
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */