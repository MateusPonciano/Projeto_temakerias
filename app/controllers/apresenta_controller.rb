class ApresentaController < ApplicationController
  before_action :set_apresentum, only: [:show, :edit, :update, :destroy]

  # GET /apresenta
  # GET /apresenta.json
  def index
    @apresenta = Apresentum.all
  end

  # GET /apresenta/1
  # GET /apresenta/1.json
  def show
  end

  # GET /apresenta/new
  def new
    @apresentum = Apresentum.new
  end

  # GET /apresenta/1/edit
  def edit
  end

  # POST /apresenta
  # POST /apresenta.json
  def create
    @apresentum = Apresentum.new(apresentum_params)

    respond_to do |format|
      if @apresentum.save
        format.html { redirect_to @apresentum, notice: 'Apresentum was successfully created.' }
        format.json { render :show, status: :created, location: @apresentum }
      else
        format.html { render :new }
        format.json { render json: @apresentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apresenta/1
  # PATCH/PUT /apresenta/1.json
  def update
    respond_to do |format|
      if @apresentum.update(apresentum_params)
        format.html { redirect_to @apresentum, notice: 'Apresentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @apresentum }
      else
        format.html { render :edit }
        format.json { render json: @apresentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apresenta/1
  # DELETE /apresenta/1.json
  def destroy
    @apresentum.destroy
    respond_to do |format|
      format.html { redirect_to apresenta_url, notice: 'Apresentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apresentum
      @apresentum = Apresentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apresentum_params
      params.require(:apresentum).permit(:codcardapio, :codigomesa, :horarioentrada, :codpromocao)
    end
end
