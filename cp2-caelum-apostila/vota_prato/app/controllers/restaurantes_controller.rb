class RestaurantesController < ApplicationController
	def index
		@restaurantes = Restaurante.order :nome
	end
	def show
		@restaurante = Restaurante.find(params[:id])
	end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy
		redirect_to(action: 'index')
	end
	def new
		@restaurante = Restaurante.new
	end
	
	#action create é necessária para persistir os dados no banco.
	def create
		@restaurante = Restaurante.new restaurante_params
		@restaurante.save
		redirect_to(action: "show", id: @restaurante)
	end

	#Solicita a atribuição das propriedades de um restaurante.
	def restaurante_params 
		params.require(:restaurante).permit(:nome, :endereco, :especialidade)
	end

end
