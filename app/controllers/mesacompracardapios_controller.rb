class MesacompracardapiosController < ApplicationController
  before_action :set_mesacompracardapio, only: [:show, :edit, :update, :destroy]

  # GET /mesacompracardapios
  # GET /mesacompracardapios.json
  def index
    @mesacompracardapios = Mesacompracardapio.all
  end

  # GET /mesacompracardapios/1
  # GET /mesacompracardapios/1.json
  def show
  end

  # GET /mesacompracardapios/new
  def new
    @mesacompracardapio = Mesacompracardapio.new
  end

  # GET /mesacompracardapios/1/edit
  def edit
  end

  # POST /mesacompracardapios
  # POST /mesacompracardapios.json
  def create
    @mesacompracardapio = Mesacompracardapio.new(mesacompracardapio_params)

    respond_to do |format|
      if @mesacompracardapio.save
        format.html { redirect_to @mesacompracardapio, notice: 'Mesacompracardapio was successfully created.' }
        format.json { render :show, status: :created, location: @mesacompracardapio }
      else
        format.html { render :new }
        format.json { render json: @mesacompracardapio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mesacompracardapios/1
  # PATCH/PUT /mesacompracardapios/1.json
  def update
    respond_to do |format|
      if @mesacompracardapio.update(mesacompracardapio_params)
        format.html { redirect_to @mesacompracardapio, notice: 'Mesacompracardapio was successfully updated.' }
        format.json { render :show, status: :ok, location: @mesacompracardapio }
      else
        format.html { render :edit }
        format.json { render json: @mesacompracardapio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesacompracardapios/1
  # DELETE /mesacompracardapios/1.json
  def destroy
    @mesacompracardapio.destroy
    respond_to do |format|
      format.html { redirect_to mesacompracardapios_url, notice: 'Mesacompracardapio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mesacompracardapio
      @mesacompracardapio = Mesacompracardapio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mesacompracardapio_params
      params.require(:mesacompracardapio).permit(:codcardapio, :codigomesa, :horarioentrada, :qtd)
    end
end
