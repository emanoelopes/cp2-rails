def pesquisa_banco(nome)
	if nome.size < 10
		throw :nome_invalido, "Nome invalido, digite novamente."
	end
	#executa a pesquisa
	"cliente #{nome}"
end

def executa_pesquisa(nome)
	catch :nome_invalido do 
		cliente = pesquisa_banco(nome)
		return cliente	
	end
end

puts executa_pesquisa("ana")

puts executa_pesquisa("Emanoel Carvalho Lopes")