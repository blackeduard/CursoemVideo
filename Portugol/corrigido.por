programa
{
	
	funcao inicio()
	{
		inteiro brancos = 0, nulos = 0, total_votos = 0, candidatos, voto, candidato_a = 0, candidato_b = 0
		real porcentagem_candidato_a, porcentagem_candidato_b, porcentagem_brancos, porcentagem_nulos
		escreva("Declare quantas pessoas irão votar: ")
		leia(candidatos)
		faca{
			limpa()
			escreva("Escolha seu candidato ou tecle zero pare encerrar\n\n")
			escreva(" 1 -> Candidato A\n")
			escreva(" 2 -> Candidato B\n")
			escreva(" 3 -> Branco\n")
			escreva("\nQualquer número diferente de 0, 1, 2 e 3 anulará o seu voto\n")
			escreva("Digite seu voto: ")
			leia(voto)
		}enquanto(candidatos != 0)
		se(total_votos > 0){
			limpa()
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */