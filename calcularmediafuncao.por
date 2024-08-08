programa
//Faça um algoritmo que receba 3 notas e imprima a média final. Deve ser feita uma
//função que recebe as 3 notas como parâmetro e retorne o resultado

{
	funcao real calcularMedia(real x, real y, real z){
	 real media
	 media= (x + y+ z) / 3
	 retorne media
	}
	funcao inicio()
	{
	real resultado
	
		real a, b, c
		escreva("Escreva 3 valores: ")
		leia(a)
		leia(b)
		leia(c)

	resultado = calcularMedia(a, b, c)

	escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 176; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */