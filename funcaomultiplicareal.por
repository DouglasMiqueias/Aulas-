//Faça uma função de multiplicação de números reais. A função
//deve receber como parâmetros dois números real e retornar o
//valor da sua multiplicação.
programa
{
	funcao real multiplicaReal(real x, real y)
	{
		x= x*y
		retorne x
	}
	
	funcao inicio()
	{
		real a, b, resultado
		escreva("Digite dois números reais ")
		leia(a)
		leia(b)
		resultado= multiplicaReal(a, b)
		escreva(multiplicaReal(a,b))
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */