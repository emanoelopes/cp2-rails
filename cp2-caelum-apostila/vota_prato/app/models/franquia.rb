class Franquia < ActiveRecord::Base
	
	def qualificacao_creation_successful(qualificacao)
		puts "Sou uma franquia e recebi sua notificação."
	end

	validates_presence_of :nome, message: "deve ser digitado."
	validates_uniqueness_of :nome, message: "nome já cadastrado."
	validate :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome,
		"primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
	end

	belongs_to :restaurante
end
