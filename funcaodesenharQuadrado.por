programa
{
	
	funcao desenharQuadrado(caracter x, inteiro y)
	{
		inteiro  i, j
		para(i=0; i< y;i++)
		{
			para(j=0;j< y; j++)
			{
				//se(i>j){ para formar um triângulo retangulo
				escreva(x," ")
			}
			escreva("\n")
		}
		
	}
	funcao inicio()
	{
		inteiro tamanho
		caracter forma
		escreva("Digite o tamanho do lado do quadrado ")
		leia(tamanho)
		escreva("Digite o caracter que formará o quadrado ")
		leia(forma)
		desenharQuadrado(forma, tamanho)
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
