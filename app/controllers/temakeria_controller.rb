class TemakeriaController < ApplicationController
  before_action :set_temakerium, only: [:show, :edit, :update, :destroy]

  # GET /temakeria
  # GET /temakeria.json
  def index
    @temakeria = Temakerium.all
  end

  # GET /temakeria/1
  # GET /temakeria/1.json
  def show
  end

  # GET /temakeria/new
  def new
    @temakerium = Temakerium.new
  end

  # GET /temakeria/1/edit
  def edit
  end

  # POST /temakeria
  # POST /temakeria.json
  def create
    @temakerium = Temakerium.new(temakerium_params)

    respond_to do |format|
      if @temakerium.save
        format.html { redirect_to @temakerium, notice: 'Temakerium was successfully created.' }
        format.json { render :show, status: :created, location: @temakerium }
      else
        format.html { render :new }
        format.json { render json: @temakerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temakeria/1
  # PATCH/PUT /temakeria/1.json
  def update
    respond_to do |format|
      if @temakerium.update(temakerium_params)
        format.html { redirect_to @temakerium, notice: 'Temakerium was successfully updated.' }
        format.json { render :show, status: :ok, location: @temakerium }
      else
        format.html { render :edit }
        format.json { render json: @temakerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temakeria/1
  # DELETE /temakeria/1.json
  def destroy
    @temakerium.destroy
    respond_to do |format|
      format.html { redirect_to temakeria_url, notice: 'Temakerium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temakerium
      @temakerium = Temakerium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temakerium_params
      params.require(:temakerium).permit(:cnpj, :cpf_adm, :string, :nome, :faturamento, :despesas, :numero, :cep, :cnpj_matriz)
    end
end
