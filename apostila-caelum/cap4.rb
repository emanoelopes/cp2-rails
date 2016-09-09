#criando um objeto

pessoa = Object.new
def pessoa.troca(roupa, lugar="banheiro")
    
    "trocando de #{roupa} no #{lugar}" 
end

puts pessoa.troca("camisa", "sala")
 
#Array

def pessoa.compra(*produtos)
        #produtos é uma array
    puts produtos.size
end

puts pessoa.compra(["Notebook", "Pendrive", "Cafeteira"])

#Hashes
config = Hash.new
    config["ssh"] = false
    config["nome"] = "emanoel.pro.br"

            puts config.size

            puts config["nome"]

class Conta
        def transfere(valor, argumentos)
                destino = argumentos[:para]
                data = argumentos[:em]
        end
end

aluno = Conta.new
escola = Conta.new

aluno.transfere(50.00, {para: escola, em: Time.now})


