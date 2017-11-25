class TelfornecedorsController < ApplicationController
  before_action :set_telfornecedor, only: [:show, :edit, :update, :destroy]

  # GET /telfornecedors
  # GET /telfornecedors.json
  def index
    @telfornecedors = Telfornecedor.all
  end

  # GET /telfornecedors/1
  # GET /telfornecedors/1.json
  def show
  end

  # GET /telfornecedors/new
  def new
    @telfornecedor = Telfornecedor.new
  end

  # GET /telfornecedors/1/edit
  def edit
  end

  # POST /telfornecedors
  # POST /telfornecedors.json
  def create
    @telfornecedor = Telfornecedor.new(telfornecedor_params)

    respond_to do |format|
      if @telfornecedor.save
        format.html { redirect_to @telfornecedor, notice: 'Telfornecedor was successfully created.' }
        format.json { render :show, status: :created, location: @telfornecedor }
      else
        format.html { render :new }
        format.json { render json: @telfornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telfornecedors/1
  # PATCH/PUT /telfornecedors/1.json
  def update
    respond_to do |format|
      if @telfornecedor.update(telfornecedor_params)
        format.html { redirect_to @telfornecedor, notice: 'Telfornecedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @telfornecedor }
      else
        format.html { render :edit }
        format.json { render json: @telfornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telfornecedors/1
  # DELETE /telfornecedors/1.json
  def destroy
    @telfornecedor.destroy
    respond_to do |format|
      format.html { redirect_to telfornecedors_url, notice: 'Telfornecedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telfornecedor
      @telfornecedor = Telfornecedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telfornecedor_params
      params.require(:telfornecedor).permit(:cnpj, :telefone)
    end
end
