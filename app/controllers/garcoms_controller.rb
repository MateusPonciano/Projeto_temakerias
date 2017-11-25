class GarcomsController < ApplicationController
  before_action :set_garcom, only: [:show, :edit, :update, :destroy]

  # GET /garcoms
  # GET /garcoms.json
  def index
    @garcoms = Garcom.all
  end

  # GET /garcoms/1
  # GET /garcoms/1.json
  def show
  end

  # GET /garcoms/new
  def new
    @garcom = Garcom.new
  end

  # GET /garcoms/1/edit
  def edit
  end

  # POST /garcoms
  # POST /garcoms.json
  def create
    @garcom = Garcom.new(garcom_params)

    respond_to do |format|
      if @garcom.save
        format.html { redirect_to @garcom, notice: 'Garcom was successfully created.' }
        format.json { render :show, status: :created, location: @garcom }
      else
        format.html { render :new }
        format.json { render json: @garcom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garcoms/1
  # PATCH/PUT /garcoms/1.json
  def update
    respond_to do |format|
      if @garcom.update(garcom_params)
        format.html { redirect_to @garcom, notice: 'Garcom was successfully updated.' }
        format.json { render :show, status: :ok, location: @garcom }
      else
        format.html { render :edit }
        format.json { render json: @garcom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garcoms/1
  # DELETE /garcoms/1.json
  def destroy
    @garcom.destroy
    respond_to do |format|
      format.html { redirect_to garcoms_url, notice: 'Garcom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garcom
      @garcom = Garcom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garcom_params
      params.require(:garcom).permit(:cpf)
    end
end
