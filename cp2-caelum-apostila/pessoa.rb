#O singleton class é exclusiva para guardar os métodos desse objeto, sem compartilhar com instâncias outras da mesma classe.

#formas diferentes de singleton


class Pessoa
	def fala
		puts "oi"
	end

	def grita
		puts "gritando"
	end

	class << self # declarado dentro da classe
		def anda
			puts 'andando'
		end
	end
end


#declarado fora da classe
class << Pessoa 
	def corre
		puts "correndo"
	end
end


p = Pessoa.new

p.fala
p.grita
Pessoa.anda #metodo singleton, exclusivo do "objeto" Pessoa.
Pessoa.corre #metodo singleton, exclusivo do "objeto" Pessoa.

