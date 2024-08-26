programa
{
	inclua biblioteca Util --> u
	
    funcao inteiro Sair()
    {
        escreva("SISTEMA FINALIZADO")
        retorne 0
    }
    
    funcao gerarVetor(inteiro vet[])
    {
    	   inteiro i
    	   para(i=0;i<=4;i++){
    	   	vet[i]=u.sorteia(1,100)
    	   }
    	   escreva("Vetor preenchido aleatoriamente!")
        u.aguarde(3000)
        limpa()
    }
    
    funcao imprimirVetor(inteiro vet[])
    { 
    	   inteiro i
        para(i=0;i<=4;i++)
        {
        	escreva(vet[i]," | ")
        }
        u.aguarde(5000)
        limpa()
    }
    
    funcao lerVetor(inteiro vet[])
    {
    	   inteiro i
        escreva("Digite 5 numeros para preencher o vetor: \n")
        para(i=0;i<=4;i++)
        {
        	leia(vet[i])
        }
        escreva("Vetor preenchido!")
        u.aguarde(3000)
        limpa()
    }
    
    funcao menu()
    {
        inteiro opcao = 0
        inteiro interruptor = 1
        inteiro vet[6]

        enquanto (interruptor == 1)
        {
            escreva(" ____________________________\n")
            escreva("|           MENU            |\n")
            escreva("|---------------------------|\n")
            escreva("| 1-Ler vetor               |\n")
            escreva("| 2-Gerar vetor aleatório   |\n")
            escreva("| 3-Imprimir vetor          |\n")
            escreva("| 4-Sair do programa        |\n")
            escreva("|___________________________|\n")
            leia(opcao)
            limpa()
            
            
            escolha(opcao)
            {
                caso 1:
                    lerVetor(vet)
                    pare
                caso 2:
                    gerarVetor(vet)
                    pare
                caso 3:
                    imprimirVetor(vet)
                    pare
                caso 4:
                    interruptor = Sair()
                    pare
                caso contrario:
                    escreva("Opção inválida, tente novamente.\n")
                    pare
            }
        }
    }
    
    funcao inicio()
    {
        menu()
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 11, 30, 3}-{vet, 22, 33, 3}-{vet, 33, 28, 3}-{vet, 50, 16, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */