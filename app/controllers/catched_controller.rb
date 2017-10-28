class CatchedController < ApplicationController
  before_action :set_catched, only: [:show, :edit, :update, :destroy]

  # GET /catched
  # GET /catched.json
  def index
    @catched = Catched.all
  end

  # GET /catched/1
  # GET /catched/1.json
  def show
  end

  # GET /catched/new
  def new
    @catched = Catched.new
  end

  # GET /catched/1/edit
  def edit
    @catched = Catched.new(catched_params)
    @catched.user_id = current_user.id
  end

  # POST /catched
  # POST /catched.json
  def create
    @catched = Catched.new(catched_params)
    @catched.user_id = current_user.id

    respond_to do |format|
      if @catched.save
        format.html { redirect_to @catched, notice: 'Catched was successfully created.' }
        format.json { render :show, status: :created, location: @catched }
      else
        format.html { render :new }
        format.json { render json: @catched.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catched/1
  # PATCH/PUT /catched/1.json
  def update
    respond_to do |format|
      if @catched.update(catched_params)
        format.html { redirect_to @catched, notice: 'Catched was successfully updated.' }
        format.json { render :show, status: :ok, location: @catched }
      else
        format.html { render :edit }
        format.json { render json: @catched.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catched/1
  # DELETE /catched/1.json
  def destroy
    @catched.destroy
    respond_to do |format|
      format.html { redirect_to catched_index_url, notice: 'Catched was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catched
      @catched = Catched.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catched_params
      params.require(:catched).permit(:pokemon_id, :user_id, :poke_level)
    end

    def upgrade
      @catched = Catched.find(params[:catched_id])
      @catched.poke_level += 1
      @text = 8
    end
end
