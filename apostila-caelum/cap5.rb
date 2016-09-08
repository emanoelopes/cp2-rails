class Franquia
        def info
                puts "Restaurante faz parte da franquia"
        end
end

class Restaurante < Franquia
        def info
                super
                puts "Restaurante Fasano"
        end
end

def informa(franquia)
            franquia.info
end

restaurante = Restaurante.new
informa restaurante

module Comentavel
        def comentarios
                @comentarios ||= []
        end

        def recebe_comentario(comentario)
                self.comentarios << comentario
        end
end

class Revista
        include Comentavel
end

revista = Revista.new
revista.recebe_comentario("Muito boa")
puts revista.comentarios

class Aluno
        # nao se sabe nada sobre o alunos
end

class Professor
        def ensina(aluno)
                def aluno.escreve
                        "sei escrever"
                end
        end
end

juca = Aluno.new
juca.respond_to? :escreve

professor = Professor.new
professor.ensina juca
juca.escreve

class Pessoa
        attr_accessor :nome
end

p = Pessoa.new
p.nome = "Samuel"
puts p.nome

