class Franquia
        def initialize 
                @restaurantes = []
        end

        def adiciona(*restaurante) #vários parametros
                for restaurante in @restaurantes
                        @restaurantes << restaurante
                end
        end 

        def mostra
            @restaurantes.each do |r|
                puts r.nome       
                end
        end

        def relatorio
                @restaurantes.each do |r|
                        yield r
                end
        end

end
#        franquia = Franquia.new

#        franquia.adiciona restaurante_um, restaurante_dois 

#       franquia.mostra

        #chamada com blocos                                                         
#        franquia.relatorio do |r|
#                puts "Restaurante cadastrado: #{r.nome}"
#       end

