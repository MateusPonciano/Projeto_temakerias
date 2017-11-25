class CompoesController < ApplicationController
  before_action :set_compo, only: [:show, :edit, :update, :destroy]

  # GET /compoes
  # GET /compoes.json
  def index
    @compoes = Compoe.all
  end

  # GET /compoes/1
  # GET /compoes/1.json
  def show
  end

  # GET /compoes/new
  def new
    @compo = Compoe.new
  end

  # GET /compoes/1/edit
  def edit
  end

  # POST /compoes
  # POST /compoes.json
  def create
    @compo = Compoe.new(compo_params)

    respond_to do |format|
      if @compo.save
        format.html { redirect_to @compo, notice: 'Compoe was successfully created.' }
        format.json { render :show, status: :created, location: @compo }
      else
        format.html { render :new }
        format.json { render json: @compo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compoes/1
  # PATCH/PUT /compoes/1.json
  def update
    respond_to do |format|
      if @compo.update(compo_params)
        format.html { redirect_to @compo, notice: 'Compoe was successfully updated.' }
        format.json { render :show, status: :ok, location: @compo }
      else
        format.html { render :edit }
        format.json { render json: @compo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compoes/1
  # DELETE /compoes/1.json
  def destroy
    @compo.destroy
    respond_to do |format|
      format.html { redirect_to compoes_url, notice: 'Compoe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compo
      @compo = Compoe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compo_params
      params.require(:compo).permit(:codbarras, :codcardapio)
    end
end
