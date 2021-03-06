class FranquiasController < ApplicationController
  before_action :set_franquia, only: [:show, :edit, :update, :destroy]

  # GET /franquias
  # GET /franquias.json
  def index
    @franquias = Franquia.all
  end

  # GET /franquias/1
  # GET /franquias/1.json
  def show
  end

  # GET /franquias/new
  def new

    @franquia = Franquia.new 
  end

  # GET /franquias/1/edit
  def edit
  end

  # POST /franquias
  # POST /franquias.json
  def create
    @franquia = Franquia.new(franquia_params)

    respond_to do |format|
      if @franquia.save
        format.html { redirect_to @franquia, notice: 'Franquia was successfully created.' }
        format.json { render :show, status: :created, location: @franquia }
      else
        format.html { render :new }
        format.json { render json: @franquia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franquias/1
  # PATCH/PUT /franquias/1.json
  def update
    respond_to do |format|
      if @franquia.update(franquia_params)
        format.html { redirect_to @franquia, notice: 'Franquia was successfully updated.' }
        format.json { render :show, status: :ok, location: @franquia }
      else
        format.html { render :edit }
        format.json { render json: @franquia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franquias/1
  # DELETE /franquias/1.json
  def destroy
    @franquia.destroy
    respond_to do |format|
      format.html { redirect_to franquias_url, notice: 'Franquia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franquia
      @franquia = Franquia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franquia_params
      params.fetch(:franquia, {})
    end
end
