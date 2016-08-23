load franquia.rb

class Restaurante
                attr_accessor :nome
    def initialize(nome)
        puts "Criando um novo restaurante: #{nome}"
        @@total ||= 0
        @@total = @@total + 1
        puts "Restaurantes criados: #{@@total}"
        @nome = nome
    end        
    
    def self.relatorio
            puts "Foram criados #{@@total} restaurantes"
    end

    def fechar_conta(dados)
           puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
    end

end


        restaurante_um = Restaurante.new "Fasano"

        restaurante_dois = Restaurante.new "Fogo de Chao"

        Restaurante.relatorio
       
        restaurante_um.fechar_conta :valor => 50, :nota => 9, :comentario => "Gostei!"

