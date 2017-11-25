class DependesController < ApplicationController
  before_action :set_depende, only: [:show, :edit, :update, :destroy]

  # GET /dependes
  # GET /dependes.json
  def index
    @dependes = Depende.all
  end

  # GET /dependes/1
  # GET /dependes/1.json
  def show
  end

  # GET /dependes/new
  def new
    @depende = Depende.new
  end

  # GET /dependes/1/edit
  def edit
  end

  # POST /dependes
  # POST /dependes.json
  def create
    @depende = Depende.new(depende_params)

    respond_to do |format|
      if @depende.save
        format.html { redirect_to @depende, notice: 'Depende was successfully created.' }
        format.json { render :show, status: :created, location: @depende }
      else
        format.html { render :new }
        format.json { render json: @depende.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependes/1
  # PATCH/PUT /dependes/1.json
  def update
    respond_to do |format|
      if @depende.update(depende_params)
        format.html { redirect_to @depende, notice: 'Depende was successfully updated.' }
        format.json { render :show, status: :ok, location: @depende }
      else
        format.html { render :edit }
        format.json { render json: @depende.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependes/1
  # DELETE /dependes/1.json
  def destroy
    @depende.destroy
    respond_to do |format|
      format.html { redirect_to dependes_url, notice: 'Depende was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_depende
      @depende = Depende.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def depende_params
      params.require(:depende).permit(:cpf_func, :nome, :relacao, :datanasc, :sexo)
    end
end
