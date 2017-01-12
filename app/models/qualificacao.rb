class Qualificacao < ActiveRecord::Base
  resourcify
	include Wisper::Publisher #Utilizando a gem Wisper em substituição do Observer do Ruby que foi descontinuado.

	after_create do
    	broadcast(:qualificacao_creation_successful, self) #Chama o método de seus inscritos.
  	end

	validates_presence_of :nota, message: " - deve ser preenchido"
	validates_presence_of :valor_gasto, message: " - deve ser preenchido"
	validates_numericality_of :nota, greater_than: 0, less_than: 10, message: " - deve ser número entre 0 e 10"
	validates_numericality_of :valor_gasto, greater_than: 0, message: " - deve ser número maior que 0"

	belongs_to :cliente
	belongs_to :restaurante

	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante
	has_many :comentarios, as: :comentavel
end
