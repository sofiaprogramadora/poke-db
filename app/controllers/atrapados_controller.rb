class AtrapadosController < ApplicationController
  before_action :set_atrapado, only: [:show, :edit, :update, :destroy]

  # GET /atrapados
  # GET /atrapados.json
  def index
    @atrapados = Atrapado.all
  end

  # GET /atrapados/1
  # GET /atrapados/1.json
  def show
  end

  # GET /atrapados/new
  def new
    @atrapado = Atrapado.new
  end

  # GET /atrapados/1/edit
  def edit
  end

  # POST /atrapados
  # POST /atrapados.json
  def create
    @atrapado = Atrapado.new(atrapado_params)

    respond_to do |format|
      if @atrapado.save
        format.html { redirect_to @atrapado, notice: 'Atrapado was successfully created.' }
        format.json { render :show, status: :created, location: @atrapado }
      else
        format.html { render :new }
        format.json { render json: @atrapado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atrapados/1
  # PATCH/PUT /atrapados/1.json
  def update
    respond_to do |format|
      if @atrapado.update(atrapado_params)
        format.html { redirect_to @atrapado, notice: 'Atrapado was successfully updated.' }
        format.json { render :show, status: :ok, location: @atrapado }
      else
        format.html { render :edit }
        format.json { render json: @atrapado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atrapados/1
  # DELETE /atrapados/1.json
  def destroy
    @atrapado.destroy
    respond_to do |format|
      format.html { redirect_to atrapados_url, notice: 'Atrapado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atrapado
      @atrapado = Atrapado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atrapado_params
      params.require(:atrapado).permit(:pokemons_id, :users_id, :poke_level)
    end
end
