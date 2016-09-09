class Qualificacao < ActiveRecord::Base
	validates_presence_of :nome, message: " - ser preenchido"
	validates_presence_of :valor_gasto, message: " - ser preenchido"
	validates_numerically_of :nota, greater_than: 0, less_than: 10, message: " - deve ser número entre 0 e 10"
	validates_numerically_of :valor_gasto, greater_than: 0, message: " - deve ser número maior que 0"

	belongs_to :cliente
	belongs_to :restaurante

	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante
end
