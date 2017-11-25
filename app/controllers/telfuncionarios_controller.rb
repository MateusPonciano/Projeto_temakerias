class TelfuncionariosController < ApplicationController
  before_action :set_telfuncionario, only: [:show, :edit, :update, :destroy]

  # GET /telfuncionarios
  # GET /telfuncionarios.json
  def index
    @telfuncionarios = Telfuncionario.all
  end

  # GET /telfuncionarios/1
  # GET /telfuncionarios/1.json
  def show
  end

  # GET /telfuncionarios/new
  def new
    @telfuncionario = Telfuncionario.new
  end

  # GET /telfuncionarios/1/edit
  def edit
  end

  # POST /telfuncionarios
  # POST /telfuncionarios.json
  def create
    @telfuncionario = Telfuncionario.new(telfuncionario_params)

    respond_to do |format|
      if @telfuncionario.save
        format.html { redirect_to @telfuncionario, notice: 'Telfuncionario was successfully created.' }
        format.json { render :show, status: :created, location: @telfuncionario }
      else
        format.html { render :new }
        format.json { render json: @telfuncionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telfuncionarios/1
  # PATCH/PUT /telfuncionarios/1.json
  def update
    respond_to do |format|
      if @telfuncionario.update(telfuncionario_params)
        format.html { redirect_to @telfuncionario, notice: 'Telfuncionario was successfully updated.' }
        format.json { render :show, status: :ok, location: @telfuncionario }
      else
        format.html { render :edit }
        format.json { render json: @telfuncionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telfuncionarios/1
  # DELETE /telfuncionarios/1.json
  def destroy
    @telfuncionario.destroy
    respond_to do |format|
      format.html { redirect_to telfuncionarios_url, notice: 'Telfuncionario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telfuncionario
      @telfuncionario = Telfuncionario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telfuncionario_params
      params.require(:telfuncionario).permit(:cpf, :telefone)
    end
end
