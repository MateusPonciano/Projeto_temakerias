class ArmazenasController < ApplicationController
  before_action :set_armazena, only: [:show, :edit, :update, :destroy]

  # GET /armazenas
  # GET /armazenas.json
  def index
    @armazenas = Armazena.all
  end

  # GET /armazenas/1
  # GET /armazenas/1.json
  def show
  end

  # GET /armazenas/new
  def new
    @armazena = Armazena.new
  end

  # GET /armazenas/1/edit
  def edit
  end

  # POST /armazenas
  # POST /armazenas.json
  def create
    @armazena = Armazena.new(armazena_params)

    respond_to do |format|
      if @armazena.save
        format.html { redirect_to @armazena, notice: 'Armazena was successfully created.' }
        format.json { render :show, status: :created, location: @armazena }
      else
        format.html { render :new }
        format.json { render json: @armazena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armazenas/1
  # PATCH/PUT /armazenas/1.json
  def update
    respond_to do |format|
      if @armazena.update(armazena_params)
        format.html { redirect_to @armazena, notice: 'Armazena was successfully updated.' }
        format.json { render :show, status: :ok, location: @armazena }
      else
        format.html { render :edit }
        format.json { render json: @armazena.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armazenas/1
  # DELETE /armazenas/1.json
  def destroy
    @armazena.destroy
    respond_to do |format|
      format.html { redirect_to armazenas_url, notice: 'Armazena was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armazena
      @armazena = Armazena.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def armazena_params
      params.require(:armazena).permit(:codbarras, :cnpj, :quantidade)
    end
end
