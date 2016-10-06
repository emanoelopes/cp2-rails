class Qualificacao < ActiveRecord::Base
	include Wisper::Publisher

	after_create :publish_creation_successful

	private
	def publish_creation_successful
		broadcast(:qualificacao_creation_successful, self)
	end



	# def commit(_attrs = nil)
	# 	assign_attributes(_attrs) if _attrs.present?
	# 	result = save
	# 	if result
	# 		broadcast(:qualificacao_creation_successful, self)
	# 	end
	# end

	validates_presence_of :nota, message: " - deve ser preenchido"
	validates_presence_of :valor_gasto, message: " -deve ser preenchido"
	validates_numericality_of :nota, greater_than: 0, less_than: 10, message: " - deve ser número entre 0 e 10"
	validates_numericality_of :valor_gasto, greater_than: 0, message: " - deve ser número maior que 0"

	belongs_to :cliente
	belongs_to :restaurante

	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante
	has_many :comentarios, as: :comentavel
end
