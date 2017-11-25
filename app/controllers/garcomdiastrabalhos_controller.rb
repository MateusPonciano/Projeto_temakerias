class GarcomdiastrabalhosController < ApplicationController
  before_action :set_garcomdiastrabalho, only: [:show, :edit, :update, :destroy]

  # GET /garcomdiastrabalhos
  # GET /garcomdiastrabalhos.json
  def index
    @garcomdiastrabalhos = Garcomdiastrabalho.all
  end

  # GET /garcomdiastrabalhos/1
  # GET /garcomdiastrabalhos/1.json
  def show
  end

  # GET /garcomdiastrabalhos/new
  def new
    @garcomdiastrabalho = Garcomdiastrabalho.new
  end

  # GET /garcomdiastrabalhos/1/edit
  def edit
  end

  # POST /garcomdiastrabalhos
  # POST /garcomdiastrabalhos.json
  def create
    @garcomdiastrabalho = Garcomdiastrabalho.new(garcomdiastrabalho_params)

    respond_to do |format|
      if @garcomdiastrabalho.save
        format.html { redirect_to @garcomdiastrabalho, notice: 'Garcomdiastrabalho was successfully created.' }
        format.json { render :show, status: :created, location: @garcomdiastrabalho }
      else
        format.html { render :new }
        format.json { render json: @garcomdiastrabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garcomdiastrabalhos/1
  # PATCH/PUT /garcomdiastrabalhos/1.json
  def update
    respond_to do |format|
      if @garcomdiastrabalho.update(garcomdiastrabalho_params)
        format.html { redirect_to @garcomdiastrabalho, notice: 'Garcomdiastrabalho was successfully updated.' }
        format.json { render :show, status: :ok, location: @garcomdiastrabalho }
      else
        format.html { render :edit }
        format.json { render json: @garcomdiastrabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garcomdiastrabalhos/1
  # DELETE /garcomdiastrabalhos/1.json
  def destroy
    @garcomdiastrabalho.destroy
    respond_to do |format|
      format.html { redirect_to garcomdiastrabalhos_url, notice: 'Garcomdiastrabalho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garcomdiastrabalho
      @garcomdiastrabalho = Garcomdiastrabalho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garcomdiastrabalho_params
      params.require(:garcomdiastrabalho).permit(:cpf, :diastrabalho)
    end
end
