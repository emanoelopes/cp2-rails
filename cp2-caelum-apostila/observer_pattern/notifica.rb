class Notifica
	def update(carro, distancia)
		puts "O carro rodou #{distancia} Km, totalizando #{carro.rodagem} kms rodados."
		puts "O carro precisa de manutenção!" if carro.manutencao < carro.rodagem
	end
end
