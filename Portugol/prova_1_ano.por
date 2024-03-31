programa
{
	inclua biblioteca Tipos --> t
	funcao inicio()
	{
		
		inteiro brancos = 0, nulos = 0, total_votos = 0, candidato_a = 0, candidato_b = 0
		real porcentagem_candidato_a, porcentagem_candidato_b
		real porcentagem_brancos, porcentagem_nulos
		inteiro voto
		cadeia ENTER = "", voto_2
		faca{
			limpa()
			escreva("Escolha seu candidato ou tecle zero pare encerrar\n\n")
			escreva(" 1 -> Candidato A\n")
			escreva(" 2 -> Candidato B\n")
			escreva(" 3 -> Branco\n")
			escreva("\nQualquer número diferente de 0, 1, 2 e 3 anulará o seu voto\n")
			escreva("Digite seu voto: ")
			leia(voto)
			limpa()
			voto_2 = ()
			se (voto == 1){
				escreva("Gud murningi")
			}
			senao{
				escolha(voto)
				{
					caso 0:
					escreva("Votação encerrada!\n")
					pare
					caso 1:
					candidato_a = candidato_a + 1
					pare
					caso 2:
					candidato_b = candidato_b +1
					pare
					caso 3:
					brancos = brancos + 1
					pare
					caso contrario:
					nulos = nulos + 1
				}
			}
		}enquanto(voto != 0)
		se (total_votos > 0 )
		{
			porcentagem_candidato_a = (candidato_a * 100) / total_votos
			porcentagem_candidato_b = (candidato_b * 100) / total_votos
			porcentagem_brancos = (brancos * 100) / total_votos
			porcentagem_nulos = (nulos * 100) / total_votos
			escreva("\n")
			escreva("Total de votos: ", total_votos,"\n\n")
			escreva("Candidato A: ", candidato_a," voto(s). ", porcentagem_candidato_a," % do total.")
			escreva("Candidato B: ", candidato_b," voto(s). ", porcentagem_candidato_b," % do total.")
			escreva("Brancos: ", brancos," voto(s). ", porcentagem_brancos," % do total.")
			escreva("Nulos: ", nulos," voto(s). ", porcentagem_nulos," % do total.")
			
		}
	}
}

/*
 * 
 * 1) Qual o erro que o programa apresentará se executado?

	candidato_a e candidato_b não identificados.
	total_votos somar os votos.
	
 * 2) Analise o código e o complete.

	   programa{
		
		funcao inicio(){
			inteiro brancos = 0, nulos = 0, total_votos = 0, candidatos, voto, candidato_a = 0, candidato_b = 0
			real porcentagem_candidato_a, porcentagem_candidato_b, porcentagem_brancos, porcentagem_nulos
			escreva("Declare quantas pessoas irão votar: ")
			leia(candidatos)
			para (inteiro i = 0; candidatos > i; i++){
				limpa()
				escreva("Escolha seu candidato ou tecle zero pare encerrar\n\n")
				escreva(" 1 -> Candidato A\n")
				escreva(" 2 -> Candidato B\n")
				escreva(" 3 -> Branco\n")
				escreva("\nQualquer número diferente de 0, 1, 2 e 3 anulará o seu voto\n")
				escreva("Digite seu voto: ")
				leia(voto)
				se (voto == 0){
					limpa()
					escreva("Programa encerrado")
					retorne
				}
				senao se (voto == 1){
					candidato_a = candidato_a + 1
				}
				senao se (voto == 2){
					candidato_b = candidato_b + 1
				}
				senao se (voto == 3){
					brancos = brancos + 1
				}
				senao{
					nulos = nulos + 1	
				}
			}
			total_votos = nulos + brancos + candidato_b + candidato_a
			porcentagem_candidato_a = (candidato_a * 100) / total_votos
			porcentagem_candidato_b = (candidato_b * 100) / total_votos
			porcentagem_brancos = (brancos * 100) / total_votos
			porcentagem_nulos = (nulos * 100) / total_votos
			escreva("\n")
			escreva("Total de votos: ", total_votos,"\n\n")
			escreva("\nCandidato A: ", candidato_a," voto(s). ", porcentagem_candidato_a," % do total.")
			escreva("\nCandidato B: ", candidato_b," voto(s). ", porcentagem_candidato_b," % do total.")
			escreva("\nBrancos: ", brancos," voto(s). ", porcentagem_brancos," % do total.")
			escreva("\nNulos: ", nulos," voto(s). ", porcentagem_nulos," % do total.")
		}
	}

 * 3) Quais tipos de estruturas temos neste código?

	Condição, repetição, caso, faça e enquanto


 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 713; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */