programa {
	inclua biblioteca Util --> u
	
	funcao cadastrarKart(inteiro &qtdTotal, cadeia &modelo[], real &valor[], inteiro &qtdLocado[], real &valorAcumulado[], inteiro &disponivel[]){
		cadeia nome
		real valorIndividual
		
		escreva("Qual o modelo do Kart: \n")
		escreva("Modelo: ")
		leia(nome)
		modelo[qtdTotal] = nome
		
		escreva("Qual o valor do aluguel do Kart: \n")
		escreva("valor: ")
		leia(valorIndividual)
		valor[qtdTotal] = valorIndividual
		
		qtdLocado[qtdTotal] = 0
		disponivel[qtdTotal] = 1
		valorAcumulado[qtdTotal] = 0.0
		qtdTotal++
	}

	funcao kartDisponiveis(inteiro qtdTotal, cadeia &modelo[], real &valor[], inteiro &qtdLocado[], real valorAcumulado[]){
		
		se(qtdTotal >= 1) {
			limpa()
			para(inteiro i = 0; i <= qtdTotal - 1 ; i++) {
				escreva("O modelo [", modelo[i],"] tem valor de locação de R$ ", valor[i]," alugado ", qtdLocado[i], " vezes, gerando um lucro total de R$ ", valorAcumulado[i], ".\n")
			}
			u.aguarde(2000)
		} senao {
			limpa()
			escreva("No momento temos ", qtdTotal, " Karts em nosso Kartodromo \n")
			escreva(" _____________________________________________________________  \n")
			escreva("|                                                             | \n")
			escreva("|        No momento temos ", qtdTotal, " Karts em nosso Kartodromo         | \n")
			escreva("|_____________________________________________________________| \n")
			escreva("\n")
		}
	}

	funcao kartLocados(inteiro qtdTotal, cadeia modelo[], inteiro disponivel[]) {
		inteiro achei = 0 
		escreva("Lista de carros locados:\n")
		se(qtdTotal == 0){
			escreva("Nenhum kart cadastrado\n")
		}
		para(inteiro i = 0; i < qtdTotal; i++) {	
			se(disponivel[i] == 0) {
				escreva("O modelo [", modelo[i], "] está locado\n")
				achei = 1
			} senao {
				se(disponivel[i] != 0 e achei == 0) {
					escreva("Nenhum modelo locado\n")
					achei = 1
				}
			}
		}	
	}

	funcao alugarKart(inteiro qtdTotal, cadeia modelo[], real valor[], inteiro qtdLocado[], inteiro disponivel[], real &valorAcumulado[]) {
		inteiro numeroKart, achei = 0
		escreva("Aluguel de kart's\n")
		se(qtdTotal == 0){
			escreva("Nenhum kart cadastrado\n")
		}
		para(inteiro i = 0; i < qtdTotal; i++) {
			se(disponivel[i] == 1) {
				escreva("Escolha ", i," para alugar o kart: Modelo - [", modelo[i], "] -------- R$", valor[i], "\n")
				achei = 1
			}	
		}
		para(inteiro i = 0; i < qtdTotal; i++) {
			se(disponivel[i] != 1 e achei == 0) {
				escreva("Nenhum kart disponível para alugar\n")
				pare		
			} 
		}	
		enquanto(achei == 1) {	
			leia(numeroKart)
			se(numeroKart < qtdTotal e numeroKart >= 0 e disponivel[numeroKart] == 1){
				disponivel[numeroKart] = 0
				qtdLocado[numeroKart] = qtdLocado[numeroKart] + 1
				valorAcumulado[numeroKart] = valor[numeroKart] * qtdLocado[numeroKart]
				achei = 0
			} senao {
				escreva("Escolha um kart disponível\n")	
			}
		}
	}

	funcao devolverKart(inteiro qtdTotal, cadeia modelo[], inteiro qtdLocado[], inteiro disponivel[]){
		inteiro numeroKart, achei = 0
		escreva("Devolução de kart's\n")
		se(qtdTotal == 0){
			escreva("Nenhum kart cadastrado\n")
		}
		para(inteiro i = 0; i < qtdTotal; i++) {
			se(disponivel[i] == 0) {
				escreva("Escolha ", i," para devolver o kart: Modelo - [", modelo[i],"]\n")
				achei = 1
			}	
		}
		para(inteiro i = 0; i < qtdTotal; i++) {
			se(disponivel[i] == 1 e achei == 0) {
				escreva("Nenhum kart para devolver\n")
				pare		
			} 
		}	
		enquanto(achei == 1) {	
			leia(numeroKart)
			se(numeroKart < qtdTotal e numeroKart >= 0 e disponivel[numeroKart] == 0){
				disponivel[numeroKart] = 1
				achei = 0
			} senao {
				escreva("Escolha um kart disponível\n")	
			}
		}
	}

	funcao kartMaiorGanho(real &valorAcumulado[], cadeia modelo[], inteiro qtdLocado[]){
		inteiro indice = 0
		real maior = 0.0
		para(inteiro i = 0; i < 15; i++){
			se(valorAcumulado[i] > maior) {
				maior = valorAcumulado[i]
				indice = i
			}
		}
		escreva("O Kart mais alugado foi o: [", modelo[indice], "], com um total de [", qtdLocado[indice] , "] vezes alugado e com um acumulo de: R$",valorAcumulado[indice], "\n")
	}

	funcao receitaDia(inteiro dia, real &ganhosDoDia, real valorAcumulado[], inteiro &flag){
		inteiro total = 0
		escreva("Hoje e o dia: ", dia, "\n")

		para(inteiro i = 0; i < 15; i++){
			total += valorAcumulado[i]
		}
		
		se (flag == 0) {
			ganhosDoDia += total
			flag = 1
		}
		
		escreva("O total de ganhos hoje é: R$", total , "\n")
	}

	funcao alugarCircuito(real &valorCircuito, real &ganhosTotais, real &ganhosDoDia, inteiro &flag){
		real valorAluguel

		escreva("Aluguel de circuito\n")
		escreva("Digite o valor do aluguel do circuito: ")
		leia(valorAluguel)

		se(valorCircuito==0){
		//se o valor do circuito for 0, significa que o circuito não foi alugado hoje
		valorCircuito = valorAluguel
		ganhosDoDia +=valorAluguel
		ganhosTotais += valorAluguel
		}senao{
			//Se o valor do circuito já foi definido, significa que já foi alugado hoje
			escreva("O circuito já foi alugado hoje. Não é posível realizar outra locação\n")
		}
		flag = 1
	}

	funcao atualizarDia(inteiro &dia, inteiro &flag, real valorAcumulado[], inteiro &qtdLocado[], real valor[]){	
		para(inteiro i = 0; i < 15; i++){
			se(qtdLocado[i] > 0) {
				qtdLocado[i] = qtdLocado[i] + 1
				valorAcumulado[i] = valor[i] * qtdLocado[i]
			}
		}
		flag = 0
		dia++
		escreva("Dia: ", dia, "\n")
		// atualizar ganho total, passar o dia, limpar reserva do circuito e aumentar em mais 1 a quantidade de dias q os karts locados estao 
	}

	funcao sair(inteiro &interruptor){
		interruptor = 0
		limpa()
		escreva(" __________________________  \n")
		escreva("|                          | \n")
		escreva("|   Sistema Finalizado!!   | \n")
		escreva("|__________________________| \n")
	}

	funcao menu(
		inteiro opcao,
		inteiro &interruptor,
		inteiro &qtdTotal,
		cadeia &modelo[],
		real &valor[],
		inteiro &qtdLocado[],
		real &valorAcumulado[],
		inteiro &disponivel[],
		real &ganhosTotais,
		real &ganhosDoDia,
		inteiro &dia,
		inteiro &flag,
		real valorCircuito
		) {
			
		escolha(opcao) {
			caso 1:
				cadastrarKart(qtdTotal, modelo, valor, qtdLocado, valorAcumulado, disponivel)
				pare
			caso 2:
				kartDisponiveis(qtdTotal, modelo, valor, qtdLocado, valorAcumulado)
				pare
			caso 3:
				kartLocados(qtdTotal, modelo, disponivel)
				pare
			caso 4:
				alugarKart(qtdTotal, modelo, valor, qtdLocado, disponivel, valorAcumulado)
				pare
			caso 5:
				devolverKart(qtdTotal, modelo, qtdLocado, disponivel)
				pare
			caso 6:
				kartMaiorGanho(valorAcumulado, modelo, qtdLocado)
				pare
			caso 7:
				receitaDia(dia, ganhosDoDia, valorAcumulado, flag)
				pare
			caso 8:
				alugarCircuito(valorCircuito, ganhosTotais, ganhosDoDia,flag)
				pare
			caso 9:
				atualizarDia(dia, flag, valorAcumulado, qtdLocado, valor)
				pare
			caso 10:
				sair(interruptor)
				pare
		}
	}


	funcao inicio(){
		cadeia modelo[15]
		real valor[15]
		inteiro qtdLocado[15]
		inteiro disponivel[15] // 1 = disponivel, 0 = locado
		real valorAcumulado[15]
		inteiro qtdTotal = 0 //quantidade de karts ja cadastrados
		inteiro continuar
		inteiro interruptor = 1

		real ganhosTotais = 0.0
		real ganhosDoDia = 0.0
		real valorCircuito = 0.0

		inteiro dia = 1

		inteiro flag = 0

		//modelo[0] = "Nissan"
		//valor[0] = 3000.50
		//qtdLocado[0] = 1
		//disponivel[0] = 1
		//valorAcumulado[0] = 3000.50
		//qtdTotal = 1
		
		enquanto(interruptor == 1) {
			escreva(" ________________________________________________________\n")
			escreva("|                                                        | \n")
			escreva("| 1.  Cadastrar um Kart                                  | \n")
			escreva("| 2.  Listar Karts disponíveis                           | \n")
			escreva("| 3.  Listar Karts locados                               | \n")
			escreva("| 4.  Alugar um Kart                                     | \n")
			escreva("| 5.  Devolver um Kart                                   | \n")
			escreva("| 6.  Kart que mais gerou ganhos                         | \n")
			escreva("| 7.  Receita e lucro do dia, considerando karts locados | \n")
			escreva("| 8.  Locação de circuito                                | \n")
			escreva("| 9.  Atualizar dia                                      | \n")
			escreva("| 10. Sair do programa                                   | \n")
			escreva("|________________________________________________________| \n")
			escreva("\n")
			escreva("R: ")
			leia(continuar)
			se(continuar >= 1 e continuar <=10) {
				menu(
					continuar,
					interruptor,
					qtdTotal,
					modelo,
					valor,
					qtdLocado,
					valorAcumulado,
					disponivel,
					ganhosTotais,
					ganhosDoDia,
					dia,
					flag,
					valorCircuito
					)
			} senao {
				sair(interruptor)
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8821; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */