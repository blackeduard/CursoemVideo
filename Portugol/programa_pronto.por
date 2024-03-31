programa
{

	inclua biblioteca Calendario --> c
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tp 
	inclua biblioteca Arquivos --> a
	inclua biblioteca Util --> u
	//					Cadastro do Aluno					//
	inteiro cadastro = 0, opcao, idade_Aluno, ano_Aluno, turno_Aluno, turma_Aluno, nde_Aluno, opcao_2, arquivo_local, c, dado_3, contador = 0, tentativas, escolha_2
	cadeia ENTER, nome_Aluno[15], sobrenome_Aluno[15], datanas_Aluno[15], email_Aluno[15], address_Aluno[15], ori_data_Aluno, pai_Aluno[15], mae_Aluno[15], turno_Alunov[15], nde_Alunov[15], turma_Alunov[15], verificador
	//					Cálculos das Notas					//
	inteiro nota1[51], nota2[51], nota3[51], nota4[51], esc, esc2, mat, bio, ing, fis, prat_exp, fil, ed_fis, arte, EO, quim, his, port, geo, materia
	cadeia nregis
	
	funcao inicio()
	{
		enquanto (verdadeiro){
			opcao = 0
			verificador = ""
			se (verificador == "" e cadastro == 0){
				limpa()
				escreva("1.Cadastrar aluno;")
				escreva("\n2.Sair do programa.")
				escreva("\nDigite sua opção: ")
				leia(opcao)
				enquanto (opcao > 2 ou opcao < 1){
					escreva("Digite novamente: ")
					leia(opcao)
				}
				}
				se (opcao == 1){
					limpa()
					/*	Formulário aluno	*/
					// Os SE's são para verificar se são aquelas informações mesmo
						escreva("Digite o primeiro nome do aluno: ")
						leia(nome_Aluno[cadastro])
						escreva("Digite o sobrenome do aluno: ")
						leia(sobrenome_Aluno[cadastro])
						escreva("Digite a data de nascimento  do aluno(DD/MM/AAAA): ")
						leia(datanas_Aluno[cadastro])
						escreva("Digite o e-mail governamental(Se não houver pressione enter): ")
						leia(email_Aluno[cadastro])
						se (email_Aluno[cadastro] == ""){
							email_Aluno[cadastro] = "Não registrado"	 
						}
						escreva("Digite o primeiro nome do pai do aluno(Se não houver pressione enter): ")
						leia(pai_Aluno[cadastro])
						se (pai_Aluno[cadastro] == ""){
							pai_Aluno[cadastro] = "Não registrado"
						}
						escreva("Digite o primeiro nome da mãe do aluno(Se não houver pressione enter): ")
						leia(mae_Aluno[cadastro])
						se (mae_Aluno[cadastro] == ""){
							mae_Aluno[cadastro] = "Não registrado"
						}
						limpa()
						escreva("Digite o Turno do aluno")
						escreva("\nDesabilitado - 1.Manhã\nDesabilitado - 2.Tarde\nDesabilitado - 3.Noite\n4.Integral\n")
						escreva("Opção: ")
						leia(turno_Aluno)
						enquanto (turno_Aluno > 4 ou turno_Aluno < 1){
							escreva("Digite novamente: ")
							leia(turno_Aluno)
						}
						se (turno_Aluno == 1){
							turno_Alunov[cadastro] = "Manhã"
						}
						se (turno_Aluno == 2){
							turno_Alunov[cadastro] = "Tarde"
						}
						se (turno_Aluno == 3){
							turno_Alunov[cadastro] = "Noite"
						}
						se (turno_Aluno == 4){
							turno_Alunov[cadastro] = "Integral"
						}
						limpa()
						se (turno_Aluno == 4){
						escreva("Digite o Nível de Ensino do aluno")
						escreva("\nDesabilitado - 1.1°Ano Ensino médio\n2.2°Ano Ensino médio\nDesabilitado - 3.3°Ano Ensino médio\n")
						escreva("Opção: ")
						leia(nde_Aluno)
						enquanto (nde_Aluno > 3 ou nde_Aluno < 1){
							escreva("Digite novamente: ")
							leia(nde_Aluno)
						}
						se (nde_Aluno == 1){
							nde_Alunov[cadastro] = "1°Ensino médio"
						}
						se (nde_Aluno == 2){
							nde_Alunov[cadastro] = "2°Ensino médio"
							limpa()
							escreva("Digite a Turma do aluno")
							escreva("\nDesabilitado - 1.Regular(EMTIR)\n2.Sistemas(EMTIS)\nDesabilitado - 3.Logística(EMTIL)\n")
							escreva("Opção: ")
							leia(turma_Aluno)
							enquanto (turma_Aluno > 3 ou turma_Aluno < 1){
								escreva("Digite novamente: ")
								leia(turma_Aluno)
							}
							se (turma_Aluno == 1){
								turma_Alunov[cadastro] = "Regular"
							}
							se (turma_Aluno == 2){
								turma_Alunov[cadastro] = "Sistemas"
							}
							se (turma_Aluno == 3){
								turma_Alunov[cadastro] = "Logística"
							}
						}
						se (nde_Aluno == 3){
							nde_Alunov[cadastro] = "3°Ensino médio"
						}
					limpa()
					escreva("Digite o Endereço do aluno(Se não houver pressione enter): ")
					leia(address_Aluno[cadastro])
					se (address_Aluno[cadastro] == ""){
							address_Aluno[cadastro] = "Não registrado"
						}
					limpa()
					escreva("Aluno registrado com sucesso!")
					u.aguarde(2000)
					verificador = nome_Aluno[0]
					cadastro = ++cadastro 
					}
				}
				senao se (opcao == 2){
				/*	Finalização do programa em primeira instância	*/
					limpa()
					escreva("Obrigado por usar nosso programa, volte sempre!")
					cadastro = cadastro + 1
					retorne
				}
			senao{
			/*	Programa após ser executado mais de uma vez	*/
				limpa()
				escreva("1.Cadastrar aluno;")
				escreva("\n2.Alterar dado;")
				escreva("\n3.Mostrar aluno;")
				escreva("\n4.Excluir aluno;")
				escreva("\n5.Adicionar nota;")
				escreva("\n6.Sair do programa.")
				escreva("\nDigite sua opção: ")
				leia(opcao)
				enquanto (opcao > 6 ou opcao < 1){
					/*	Programa detectado erro diferente das opções	*/
					escreva("Digite novamente: ")
					leia(opcao) 
				}
				se (opcao == 1){
					/*	Cadastrar outro aluno	*/
					limpa()
						escreva("Digite o primeiro nome do aluno: ")
						leia(nome_Aluno[cadastro])
						escreva("Digite o sobrenome do aluno: ")
						leia(sobrenome_Aluno[cadastro])
						escreva("Digite a data de nascimento  do aluno(DD/MM/AAAA): ")
						leia(datanas_Aluno[cadastro])
						escreva("Digite o e-mail governamental(Se não houver pressione enter): ")
						leia(email_Aluno[cadastro])
						se (email_Aluno[cadastro] == ""){
							email_Aluno[cadastro] = "Não registrado"	 
						}
						escreva("Digite o primeiro nome do pai do aluno(Se não houver pressione enter): ")
						leia(pai_Aluno[cadastro])
						se (pai_Aluno[cadastro] == ""){
							pai_Aluno[cadastro] = "Não registrado"
						}
						escreva("Digite o primeiro nome da mãe do aluno(Se não houver pressione enter): ")
						leia(mae_Aluno[cadastro])
						se (mae_Aluno[cadastro] == ""){
							mae_Aluno[cadastro] = "Não registrado"
						}
						limpa()
						escreva("Digite o Turno do aluno")
						escreva("\nDesabilitado - 1.Manhã\nDesabilitado - 2.Tarde\nDesabilitado - 3.Noite\n4.Integral\n")
						escreva("Opção: ")
						leia(turno_Aluno)
						enquanto (turno_Aluno > 4 ou turno_Aluno < 1){
							escreva("Digite novamente: ")
							leia(turno_Aluno)
						}
						se (turno_Aluno == 1){
							turno_Alunov[cadastro] = "Manhã"
						}
						se (turno_Aluno == 2){
							turno_Alunov[cadastro] = "Tarde"
						}
						se (turno_Aluno == 3){
							turno_Alunov[cadastro] = "Noite"
						}
						se (turno_Aluno == 4){
							turno_Alunov[cadastro] = "Integral"
						}
						limpa()
						se (turno_Aluno == 4){
						escreva("Digite o Nível de Ensino do aluno")
						escreva("\nDesabilitado - 1.1°Ano Ensino médio\n2.2°Ano Ensino médio\nDesabilitado - 3.3°Ano Ensino médio\n")
						escreva("Opção: ")
						leia(nde_Aluno)
						enquanto (nde_Aluno > 3 ou nde_Aluno < 1){
							escreva("Digite novamente: ")
							leia(nde_Aluno)
						}
						se (nde_Aluno == 1){
							nde_Alunov[cadastro] = "1°Ensino médio"
						}
						se (nde_Aluno == 2){
							nde_Alunov[cadastro] = "2°Ensino médio"
							limpa()
							escreva("Digite a Turma do aluno")
							escreva("\nDesabilitado - 1.Regular(EMTIR)\n2.Sistemas(EMTIS)\nDesabilitado - 3.Logística(EMTIL)\n")
							escreva("Opção: ")
							leia(turma_Aluno)
							enquanto (turma_Aluno > 3 ou turma_Aluno < 1){
								escreva("Digite novamente: ")
								leia(turma_Aluno)
							}
							se (turma_Aluno == 1){
								turma_Alunov[cadastro] = "Regular"
							}
							se (turma_Aluno == 2){
								turma_Alunov[cadastro] = "Sistemas"
							}
							se (turma_Aluno == 3){
								turma_Alunov[cadastro] = "Logística"
							}
						}
						se (nde_Aluno == 3){
							nde_Alunov[cadastro] = "3°Ensino médio"
						}
					limpa()
					escreva("Digite o Endereço do aluno(Se não houver pressione enter): ")
					leia(address_Aluno[cadastro])
					se (address_Aluno[cadastro] == ""){
							address_Aluno[cadastro] = "Não registrado"
						}
					limpa()
					escreva("Aluno registrado com sucesso!")
					u.aguarde(2000)
					verificador = nome_Aluno[0]
					cadastro = ++cadastro
					}
				}
				se (opcao == 2){
					/*	Alterar o aluno	*/
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção(para voltar digite 0): ")
					leia(opcao_2)
					se (opcao_2 == 0){
						
					}
					senao se (opcao_2 >= 1){
						limpa()
						opcao_2 = opcao_2 - 1 
						escreva("------------------Opcões do aluno------------------")
						escreva("\n1.Nome completo: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
						escreva("\n2.Data de nascimento: ", datanas_Aluno[opcao_2])
						escreva("\n3.E-mail governamental: ", email_Aluno[opcao_2])
						escreva("\n4.Responsáveis: ", pai_Aluno[opcao_2] ," e ", mae_Aluno[opcao_2] ,"")
						escreva("\n5.Turno: ", turno_Alunov[opcao_2])
						escreva("\n6.Nível de Ensino: ", nde_Alunov[opcao_2])
						escreva("\n7.Turma: ", turma_Alunov[opcao_2])
						escreva("\n8.Endereço: ", address_Aluno[opcao_2])
						escreva("\n--------------------------------------------------")
						escreva("\nQual dado deseja alterar: ")
						leia(dado_3) 
						enquanto (dado_3 > 8 ou dado_3 < 1){
							escreva("Digite novamente a opção: ")
							leia (dado_3)
							contador = contador + 1
							se (contador == 5){
								escreva("Excesso de tentativas digite ENTER para reiniciar")
								leia(ENTER)
								retorne 
							}
						}
						se (dado_3 == 1){
							limpa()
							escreva("Dado 'NOME' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'NOME'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo primeiro nome: ")
								leia(nome_Aluno[opcao_2])
								enquanto (nome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo primeiro nome: ")
									leia(nome_Aluno[opcao_2])
								}
								escreva("Digite o novo sobrenome: ")
								leia(sobrenome_Aluno[opcao_2])
								enquanto (sobrenome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo sobrenome: ")
									leia(sobrenome_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 2){
							limpa()
							escreva("Dado 'DATA DE NASCIMENTO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'DATA DE NASCIMENTO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite a nova data de nascimento(formato DD/MM/AAAA): ")
								leia(datanas_Aluno[opcao_2])
								enquanto (datanas_Aluno[opcao_2] == ""){
									escreva("Digite novamente a data de nascimento(formato DD/MM/AAAA): ")
									leia(datanas_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 3){
							limpa()
							escreva("Dado 'EMAIL' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'EMAIL'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo E-mail(se não houver pressione ENTER): ")
								leia(email_Aluno[opcao_2])
								se (email_Aluno[opcao_2] == ""){
									email_Aluno[opcao_2] = "Não registrado"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 4){
							limpa()
							escreva("Dado 'RESPONSÁVEIS' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'RESPONSÁVEIS'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo dado: ")
								leia(nome_Aluno[opcao_2])
								enquanto (nome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo dado: ")
									leia(nome_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 5){
							limpa()
							escreva("Dado 'TURNO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'TURNO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("1.Manhã\n2.Tarde\n3.Noite\n4.Integral\nOpção: ")
								leia(turno_Aluno)
								enquanto (turno_Aluno > 4 ou turno_Aluno < 1){
									escreva("Digite novamente a opção: ")
									leia(turno_Aluno)
								}
								se (turno_Aluno == 1){
									turno_Alunov[opcao_2] = "Manhã"
								}
								senao se (turno_Aluno == 2){
									turno_Alunov[opcao_2] = "Tarde"
								}
								senao se (turno_Aluno == 3){
									turno_Alunov[opcao_2] = "Noite"
								}
								senao se (turno_Aluno == 4){
									turno_Alunov[opcao_2] = "Integral"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 6){
							limpa()
							escreva("Dado 'NÍVEL DE ENSINO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'NÍVEL DE ENSINO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("")
								leia(nome_Aluno[opcao_2])
								enquanto (nome_Aluno[opcao_2] == ""){
									escreva("Digite novamente o novo dado: ")
									leia(nome_Aluno[opcao_2])
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 7){
							limpa()
							escreva("Dado 'TURMA' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'TURMA'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("1.Regular\n2.Sistemas\n3.Logística\nOpção: ")
								leia(turma_Aluno)
								enquanto (turma_Aluno > 3 ou turma_Aluno < 1){
									escreva("Digite novamente a opção: ")
									leia(turma_Aluno)
								}
								se (turma_Aluno == 1){
									turma_Alunov[opcao_2] = "Regular"
								}
								se (turma_Aluno == 2){
									turma_Alunov[opcao_2] = "Sistemas"
								}
								se (turma_Aluno == 3){
									turma_Alunov[opcao_2] = "Logística"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
						se (dado_3 == 8){
							limpa()
							escreva("Dado 'ENDEREÇO' escolhido para alterar")
							escreva("\nProsseguir alterar o dado 'ENDEREÇO'?")
							escreva("\n1.Sim			2.Não")
							escreva("\nOpção: ")
							leia(escolha_2)
							enquanto (escolha_2 != 1 e escolha_2 != 2){
								escreva("Digite novamente a sua opção: ")
								leia(opcao_2)
							}
							se (escolha_2 == 1){
								limpa()
								escreva("Digite o novo endereço: ")
								leia(address_Aluno[opcao_2])
								se (address_Aluno[opcao_2] == ""){
									address_Aluno[opcao_2] = "Não registrado"
								}
								limpa()
								escreva("Dado alterado com sucesso!")
								u.aguarde(2000)
							}
							senao se(escolha_2 == 2){
								escreva("Retornando")
								u.aguarde(1000)
							}
						}
					}
				}
				se (opcao == 3){
					/*	Mostrar o aluno	*/
					// Com mais atualizações mostrará as salas também
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção(para voltar digite 0): ")
					leia(opcao_2)
					se (opcao_2 == 0){
						
					}
					senao se (opcao_2 >= 1){
						limpa()
						opcao_2 = opcao_2 - 1 
						escreva("------------------Opcões do aluno------------------")
						escreva("\nNome completo: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
						escreva("\nData de nascimento: ", datanas_Aluno[opcao_2])
						escreva("\nE-mail governamental: ", email_Aluno[opcao_2])
						escreva("\nResponsáveis: ", pai_Aluno[opcao_2] ," e ", mae_Aluno[opcao_2] ,"")
						escreva("\nTurno: ", turno_Alunov[opcao_2])
						escreva("\nNível de Ensino: ", nde_Alunov[opcao_2])
						escreva("\nTurma: ", turma_Alunov[opcao_2])
						escreva("\nEndereço: ", address_Aluno[opcao_2])
						escreva("\n--------------------------------------------------")
						escreva("\nPressione 1 para ver as notas do bimestre. Caso contrario pressione qualquer outro número ")
						leia(esc)
						limpa()
						escolha(esc){
							caso 1:
								escreva("1 - Matemática    5 - História              9 - Filosofia                    13 - Biologia")
								escreva("\n2 - Português     6 - Estudos Orientados    10 -  Física")
								escreva("\n3 - Geografia     7 - Artes                 11 -  Práticas Experimentais")
								escreva("\n4 - Química       8 - Educação Física       12 - Inglês")
								escreva("\n\nEscolha a máteria: ")
								leia(esc2)
								enquanto (esc2 < 1 ou esc2 > 13){
									escreva("Digite novamente: ")
									leia(esc2)
								}
								limpa()
								se (esc2 == 1){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("Matéria: Matemática")
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 2){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Português")
									opcao_2 = opcao_2 + 4
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 3){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Geografia")
									opcao_2 = opcao_2 + 8
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 4){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Química")
									opcao_2 = opcao_2 + 12
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 5){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: História")
									opcao_2 = opcao_2 + 16
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 6){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Estudos Orientados")
									opcao_2 = opcao_2 + 20
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 7){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Artes")
									opcao_2 = opcao_2 + 24
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 8){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Educação Física")
									opcao_2 = opcao_2 + 28
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 9){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Filosofia")
									opcao_2 = opcao_2 + 32
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 10){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Física")
									opcao_2 = opcao_2 + 36
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 11){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Práticas Experimentais")
									opcao_2 = opcao_2 + 40
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 12){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Inglês")
									opcao_2 = opcao_2 + 44
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								senao se (esc2 == 13){
									escreva("------------------Notas dos Bimestres------------------")
									escreva("\nNome do Aluno: ", nome_Aluno[opcao_2]," ", sobrenome_Aluno[opcao_2])
									escreva("\nMatéria: Biologia")
									opcao_2 = opcao_2 + 48
									escreva("\n1° BIMESTRE: ", nota1[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n2° BIMESTRE: ", nota2[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n3° BIMESTRE: ", nota3[opcao_2]," pontos")
									opcao_2 = opcao_2 + 1
									escreva("\n4° BIMESTRE: ", nota4[opcao_2]," pontos")
									escreva("\n-------------------------------------------------------")
									escreva("\n*OBS) Se houver 0 não necessariamente os pontos foram registrados. Para registralos vá na opção 5 no menu.*")
									escreva("\nPressione ENTER para retornar: ")
									leia(ENTER)
								}
								pare
							caso contrario:
								pare
						}
					}
				}
				se (opcao == 4){
					/*	Excluir aluno	*/
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção para deletar(para voltar digite 0): ")
					leia(opcao_2)
					se (opcao_2 == 0){
						
					}
					senao se(opcao_2 <= cadastro){
						se (opcao_2 > 0){
							enquanto(15 != opcao_2){
								nome_Aluno[opcao_2 - 1] = nome_Aluno[opcao_2]
								address_Aluno[opcao_2 - 1] = address_Aluno[opcao_2]
								datanas_Aluno[opcao_2 - 1] = datanas_Aluno[opcao_2]
								email_Aluno[opcao_2 - 1] = email_Aluno[opcao_2]
								mae_Aluno[opcao_2 - 1] = mae_Aluno[opcao_2]
								pai_Aluno[opcao_2 - 1] = pai_Aluno[opcao_2]
								sobrenome_Aluno[opcao_2 - 1] = sobrenome_Aluno[opcao_2]
								turma_Alunov[opcao_2 - 1] = turma_Alunov[opcao_2]
								turno_Alunov[opcao_2 - 1] = turno_Alunov[opcao_2]
								opcao_2 = opcao_2 + 1 
							}
							limpa()
							escreva("Deletando informações.")
							u.aguarde(1000)
							limpa()
							escreva("Deletando informações..")
							u.aguarde(1000)
							limpa()
							escreva("Deletando informações...")
							u.aguarde(1000)
							limpa()
							escreva("Deletado com sucesso!")
							u.aguarde(1000)
						}
						cadastro = cadastro - 1
					}
				}
				se (opcao == 5){
					limpa()
					para(inteiro i=0; i < cadastro; i++){
						escreva(i+1,".",nome_Aluno[i]," ", sobrenome_Aluno[i],"\n")
					}
					escreva("Digite sua opção(para voltar digite 0): ")
					leia(opcao_2)
					limpa()
					se (opcao_2 == 0){
						
					}
					senao se (opcao_2 >= 1){
						opcao_2 = opcao_2 -1
						escreva("1 - 1° Bimestre")
						escreva("\n2 - 2° Bimestre")
						escreva("\n3 - 3° Bimestre")
						escreva("\n4 - 4° Bimestre")
						escreva("\nEscolha o BIMESTRE: ")
						leia(opcao)
						limpa()
						escreva("1 - Matemática    5 - História              9 - Filosofia                    13 - Biologia")
						escreva("\n2 - Português     6 - Estudos Orientados    10 -  Física")
						escreva("\n3 - Geografia     7 - Artes                 11 -  Práticas Experimentais")
						escreva("\n4 - Química       8 - Educação Física       12 - Inglês")
						escreva("\n\nEscolha a MATÉRIA: ")
						leia(materia)
						limpa()
						se (materia == 1){
							se (opcao == 1){
								escreva("1° BIMESTRE - MATEMÁTICA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - MATEMÁTICA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+1])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - MATEMÁTICA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+2])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - MATEMÁTICA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+3])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 2){
							se (opcao == 1){
								escreva("1° BIMESTRE - PORTUGUÊS")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+4])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - PORTUGUÊS")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+5])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - PORTUGUÊS")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+6])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - PORTUGUÊS")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+7])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 3){
							se (opcao == 1){
								escreva("1° BIMESTRE - GEOGRAFIA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+8])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - GEOGRAFIA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+9])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - GEOGRAFIA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+10])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - GEOGRAFIA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+11])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 4){
							se (opcao == 1){
								escreva("1° BIMESTRE - QUÍMICA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+12])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - QUÍMICA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+13])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - QUÍMICA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+14])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - QUÍMICA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+15])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 5){
							se (opcao == 1){
								escreva("1° BIMESTRE - HISTÓRIA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+16])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - HISTÓRIA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+17])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - HISTÓRIA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+18])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - HISTÓRIA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+19])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 6){
							se (opcao == 1){
								escreva("1° BIMESTRE - ESTUDOS ORIENTADOS")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+20])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - ESTUDOS ORIENTADOS")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+21])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - ESTUDOS ORIENTADOS")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+22])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - ESTUDOS ORIENTADOS")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+23])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 7){
							se (opcao == 1){
								escreva("1° BIMESTRE - ARTES")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+24])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - ARTES")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+25])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - ARTES")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+26])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - ARTES")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+27])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 8){
							se (opcao == 1){
								escreva("1° BIMESTRE - EDUCAÇÃO FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+28])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - EDUCAÇÃO FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+29])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - EDUCAÇÃO FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+30])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - EDUCAÇÃO FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+31])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 9){
							se (opcao == 1){
								escreva("1° BIMESTRE - FILOSOFIA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+32])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - FILOSOFIA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+33])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - FILOSOFIA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+34])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - FILOSOFIA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+35])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 10){
							se (opcao == 1){
								escreva("1° BIMESTRE - FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+36])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+37])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+38])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - FÍSICA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+39])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 11){
							se (opcao == 1){
								escreva("1° BIMESTRE - PRÁTICAS EXPERIMENTAIS")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+40])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - PRÁTICAS EXPERIMENTAIS")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+41])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - PRÁTICAS EXPERIMENTAIS")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+42])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - PRÁTICAS EXPERIMENTAIS")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+43])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 12){
							se (opcao == 1){
								escreva("1° BIMESTRE - INGLÊS")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+44])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - INGLÊS")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+45])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - INGLÊS")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+46])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - INGLÊS")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+47])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao se (materia == 13){
							se (opcao == 1){
								escreva("1° BIMESTRE - BIOLOGIA")
								escreva("\nAdicione a nota: ")
								leia(nota1[opcao_2+48])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 2){
								escreva("2° BIMESTRE - BIOLOGIA")
								escreva("\nAdicione a nota: ")
								leia(nota2[opcao_2+49])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 3){
								escreva("3° BIMESTRE - BIOLOGIA")
								escreva("\nAdicione a nota: ")
								leia(nota3[opcao_2+50])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
							se (opcao == 4){
								escreva("4° BIMESTRE - BIOLOGIA")
								escreva("\nAdicione a nota: ")
								leia(nota4[opcao_2+51])
								limpa()
								escreva("! Nota Registrada !")
								u.aguarde(1500)
							}
						}
						senao{
							escreva("Opção ínvalida")
							u.aguarde(1500)
							limpa()
						}
					}
				}
				se (opcao == 6){
					/*	Encerrar o programa	*/
					limpa()
					escreva("Obrigado por usar nosso programa, volte sempre!")
					retorne
				}
			}
		}
	}
}
/*	CÁLCULOS{
		*	ori_data_Aluno = datanas_Aluno
		*	datanas_Aluno = t.extrair_subtexto(datanas_Aluno, 6, 10)
		*	ano_Aluno = tp.cadeia_para_inteiro(datanas_Aluno, 10)
			idade_Aluno = c.ano_atual() - ano_Aluno	
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 33033; 
 * @DOBRAMENTO-CODIGO = [26, 20, 43, 48, 53, 61, 65, 31, 127, 145, 150, 245, 796, 865, 873, 881, 889, 898, 932, 966, 1000, 1034, 1068, 1102, 1136, 1170, 1204, 1238, 1272, 1306, 1313];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */