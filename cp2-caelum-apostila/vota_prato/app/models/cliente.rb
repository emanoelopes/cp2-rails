class Cliente < ActiveRecord::Base
	validates_presence_of :nome, message: " - ser preenchido"
	validates_uniqueness_of :nome, message: " - já cadastrado"
	
validates_numerically_of :idade, greater_than: 0, less_than: 100, message: " - deve ser número entre 0 e 100"

	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome, "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end
	has_many :qualificacoes
end
