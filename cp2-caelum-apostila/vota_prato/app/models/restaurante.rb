require 'observer'

class Restaurante < ActiveRecord::Base
	include Observer
	include Observable

	attr_reader :nome, :nota

	def qualifica(nota)
		puts "Restaurante recebeu #{nota}"
		notifica
	end


	validates_presence_of :nome, message: "Deve ser preenchido"
	validates_presence_of :endereco, message: "Deve ser preenchido"
	validates_presence_of :especialidade, message: "Deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome já cadastrado"
	validates_uniqueness_of :endereco, message: "Endereço já cadastrado"
	validate :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome, "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end
	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	has_many :comentarios, as: :comentavel
  has_attached_file :foto, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
  validates_attachment :foto, presence: true
end
