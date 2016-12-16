class RestaurantesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @restaurantes = Restaurante.order("nome").page(params['page']).per(3)

		respond_to do |format|
			format.html
			format.xml {render xml: @restaurantes}
			format.json {render json: @restaurantes}
		end
	end
	def show
		@restaurante = Restaurante.find(params[:id])

		respond_to do |format|
			format.html
			format.xml {render xml: @restaurante}
			format.json {render json: @restaurante}
		end
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
		if @restaurante.save
		redirect_to(action: "show", id: @restaurante)
		else
		render action: "new"
		end
	end

	#Solicita a atribuição das propriedades de um restaurante.
	def restaurante_params 
		params.require(:restaurante).permit(:nome, :endereco, :especialidade, :foto)
	end

	def edit
		@restaurante = Restaurante.find params[:id]
	end

	def update
		@restaurante = Restaurante.find(params[:id])
		if @restaurante.update_attributes(restaurante_params)
			redirect_to action: "show", id: @restaurante
		else
			render action: "edit"
		end
	end

	def busca
		@restaurante = Restaurante.find_by_nome(params[:nome])
		if @restaurante
			redirect_to :action => 'show', :id => @restaurante.id
		else
			flash[:notice] = 'Restaurante não encontrado.'
			redirect_to :action => 'index'
		end
	end

end
