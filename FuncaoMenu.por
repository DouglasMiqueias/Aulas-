programa
{
	inclua biblioteca Util --> u
	
	funcao Sair(inteiro &interruptor)
	{
		interruptor = 0
	}
	
	funcao imprimirVetor()
	{
		escreva("imprimir")
	}
	funcao gerarVetor()
	
	{
		escreva("Gerar Vetor")
	}
	
	funcao lerVetor()
	{
		escreva("lerVetor")
	}
	funcao  inicio()
	{
		inteiro continuar
		escreva(" ____________________________")
		escreva("|           MENU            |")
		escreva("|---------------------------|")
		escreva("| 1-Ler vetor               |")
		escreva("| 2-Gerar vetor aleatório   |")
		escreva("| 3-Imprimir vetor          |")
		escreva("| 4-Sair do programa        |")
		escreva("|___________________________|")
		leia(continuar)
		se(continuar >1 e continuar <4){
		menu()
		}
	}
	funcao menu()
	{
		inteiro interruptor=1, opcao
		
		enquanto (interruptor==1)
		{
			escolha(opcao){
				caso 1:
				lerVetor()
				pare
				caso 2:
				gerarVetor()
				pare
				caso 3:
				imprimirVetor()
				pare
				caso 4:
				Sair()
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 764; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */