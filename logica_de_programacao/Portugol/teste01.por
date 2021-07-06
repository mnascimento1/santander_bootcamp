programa
{
	
	funcao inicio()
	{
		real janeiro,fevereiro,marco,abril,soma,media
		cadeia nome
		
		escreva("Digite o nome do vendedor: ")
		leia(nome)
		escreva("Digite o total de vendas de Janeiro:")
		leia(janeiro)
		escreva("Digite o total de vendas de Fevereiro:")
		leia(fevereiro)
		escreva("Digite o total de vendas de Março:")
		leia(marco)
		escreva("Digite o total de vendas de Abril:")
		leia(abril)

		soma = (janeiro+fevereiro+marco+abril)
		media = (soma/4)

		escreva("O vendedor: " + nome + " Vendeu no periodo um total de: " + soma + " Uma média mensal de: " + media)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */