class TemakeriacompraprodutosController < ApplicationController
  before_action :set_temakeriacompraproduto, only: [:show, :edit, :update, :destroy]

  # GET /temakeriacompraprodutos
  # GET /temakeriacompraprodutos.json
  def index
    @temakeriacompraprodutos = Temakeriacompraproduto.all
  end

  # GET /temakeriacompraprodutos/1
  # GET /temakeriacompraprodutos/1.json
  def show
  end

  # GET /temakeriacompraprodutos/new
  def new
    @temakeriacompraproduto = Temakeriacompraproduto.new
  end

  # GET /temakeriacompraprodutos/1/edit
  def edit
  end

  # POST /temakeriacompraprodutos
  # POST /temakeriacompraprodutos.json
  def create
    @temakeriacompraproduto = Temakeriacompraproduto.new(temakeriacompraproduto_params)

    respond_to do |format|
      if @temakeriacompraproduto.save
        format.html { redirect_to @temakeriacompraproduto, notice: 'Temakeriacompraproduto was successfully created.' }
        format.json { render :show, status: :created, location: @temakeriacompraproduto }
      else
        format.html { render :new }
        format.json { render json: @temakeriacompraproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temakeriacompraprodutos/1
  # PATCH/PUT /temakeriacompraprodutos/1.json
  def update
    respond_to do |format|
      if @temakeriacompraproduto.update(temakeriacompraproduto_params)
        format.html { redirect_to @temakeriacompraproduto, notice: 'Temakeriacompraproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @temakeriacompraproduto }
      else
        format.html { render :edit }
        format.json { render json: @temakeriacompraproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temakeriacompraprodutos/1
  # DELETE /temakeriacompraprodutos/1.json
  def destroy
    @temakeriacompraproduto.destroy
    respond_to do |format|
      format.html { redirect_to temakeriacompraprodutos_url, notice: 'Temakeriacompraproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temakeriacompraproduto
      @temakeriacompraproduto = Temakeriacompraproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temakeriacompraproduto_params
      params.require(:temakeriacompraproduto).permit(:cnpj_temakeria, :cnpj_fornecedor, :codbarras, :data, :preco, :qtd)
    end
end
