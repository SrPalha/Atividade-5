programa
{
	funcao limparTela() {
    // código para limpar a tela
}

	funcao pausa() {
    // código para pausar o programa
}

    // declaração de variáveis globais
    cadeia nomes[10]
    cadeia cpfs[10]
    inteiro dias[10]
    real despesas[10]

    // valor da diária do hotel
    real VALOR_DIARIA = 100.0

    funcao inicio() {
        menu(0)
    }

    funcao menu(inteiro opcao) {
    
        escreva("Bem-vindo ao Hotel XYZ!\n")
        escreva("Escolha uma opção:\n")
        escreva("1 - Cadastrar Hóspedes\n")
        escreva("2 - Exibir Hóspedes Cadastrados\n")
        escreva("3 - Exibir Quartos\n")
        escreva("4 - Atribuir Hóspede a um Quarto\n")
        escreva("5 - Reservar Área de Lazer\n")
        escreva("6 - Calcular Total a Pagar\n")
        escreva("0 - Sair\n")
        leia(opcao)

        escolha(opcao) {
            caso 1:
                cadastrarHospedes()
                menu(0)
            caso 2:
                exibirHospedesCadastrados(nomes, cpfs, dias, despesas, 10)
                menu(0)
                pare
            caso 3:
                exibirQuartos(nomes, dias)
                menu(0)
                pare
            caso 4:
                alocarHospede(nomes, dias)
                menu(0)
                pare
            caso 5:
                // Chama função para reservar área de lazer
                pare
            caso 6:
                // Chama função para calcular total a pagar
                pare
            caso 0:
                escreva("Obrigado por escolher o Hotel XYZ. Volte sempre!\n")
                pare
            caso contrario:
                escreva("Opção inválida. Tente novamente.\n")
                menu(0) // chama novamente o menu
        }
    }

    funcao cadastrarHospedes() {
        inteiro qtdeHospedes = 0
        enquanto (qtdeHospedes < 10) {
            limparTela()
            escreva("Cadastro de Hóspedes\n")
            escreva("---------------------\n")
            escreva("Informe o nome do hóspede: ")
            leia(nomes[qtdeHospedes])
            escreva("Informe o CPF do hóspede: ")
            leia(cpfs[qtdeHospedes])
            escreva("Informe a quantidade de dias que ficará hospedado: ")
            leia(dias[qtdeHospedes])

            // Zerando o valor das despesas do hotel
            despesas[qtdeHospedes] = 0.0
            
            // Calcula o valor total da despesa do hóspede
        	  despesas[qtdeHospedes] = dias[qtdeHospedes] * VALOR_DIARIA

            qtdeHospedes++

            // Perguntar se deseja cadastrar mais um hóspede
        inteiro opcao
            escreva("\nDeseja cadastrar mais um hóspede? (1 - sim / 0 - não): ")
            leia(opcao)
            se (opcao == 0) {
                pausa()
                limparTela()
                escreva("Cadastro de Hóspedes Concluído!\n")
                pausa()
                retorne
            }
        }
            limparTela()
            escreva("Cadastro de Hóspedes\n")
            escreva("---------------------\n")
            escreva("Limite de cadastros atingido!\n")
            pausa()
            retorne
    }

    funcao exibirHospedesCadastrados(cadeia nomes[], cadeia cpfs[], inteiro dias[], real despesas[], inteiro numHospedesCadastrados) {
            se (numHospedesCadastrados == 0) {
                escreva("Nenhum hóspede cadastrado.\n")
                retorne
    }

            escreva("\nLista de hóspedes cadastrados:\n")
            para (inteiro i = 0; i < numHospedesCadastrados e nomes[i] != ""; i++) {
            escreva("Hóspede " + (i+1) + ":\n")
            escreva("Nome: " + nomes[i] + "\n")
            escreva("CPF: " + cpfs[i] + "\n")
            escreva("Dias de Hospedagem: " + dias[i] + "\n")
            escreva("Valor total das despesas: R$ " + despesas[i] + "\n\n")
    }
   
    }
    funcao exibirQuartos(cadeia nomes[], inteiro dias[]) {
    inteiro numQuartos = 10
    escreva("\nQuartos do hotel:\n\n")
    para (inteiro i = 0; i < numQuartos; i++) {
        escreva("Quarto " + (i + 1) + ": ")
        se (nomes[i] == "") {
            escreva("Livre\n\n")
        } senao {
            escreva("Ocupado por " + nomes[i] + " há " + dias[i] + " dias\n")
        }
    }
    }
   funcao alocarHospede(cadeia nomes[], inteiro dias[]) {
    inteiro numQuartos = 10
    inteiro quarto = 0
    limparTela()
    escreva("Alocação de Hóspede\n")
    escreva("--------------------\n")
    escreva("Informe o número do quarto (1 a 10): ")
    leia(quarto)
    enquanto (quarto < 1 ou quarto > numQuartos) {
        escreva("Número de quarto inválido. Tente novamente.\n")
        escreva("Informe o número do quarto (1 a 10): ")
        leia(quarto)
    }
    se (nomes[quarto-1] != "") {
        escreva("Este quarto já está ocupado.\n")
        pausa()
        retorne
    }
    escreva("Informe o nome do hóspede: ")
    leia(nomes[quarto-1])
    escreva("Informe a quantidade de dias que ficará hospedado: ")
    leia(dias[quarto-1])
    limparTela()
    escreva("Hóspede alocado com sucesso no quarto " + quarto + "!\n\n")
    pausa()
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */