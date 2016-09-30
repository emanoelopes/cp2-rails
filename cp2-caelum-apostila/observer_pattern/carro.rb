require 'observer'
require_relative 'notifica.rb'

class Carro

  include Observable

	attr_reader :rodagem, :manutencao

	def initialize(rodagem = 58000, manutencao = 60000)
		@rodagem, @manutencao = rodagem, manutencao
    add_observer(Notifica.new)
	end

	def log(distancia)
		@rodagem += distancia
    changed 
    notify_observers(self, distancia)
	end
end

carro = Carro.new()
carro.log(850)
carro.log(1500)


