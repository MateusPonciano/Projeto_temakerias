class AtendesController < ApplicationController
  before_action :set_atende, only: [:show, :edit, :update, :destroy]

  # GET /atendes
  # GET /atendes.json
  def index
    @atendes = Atende.all
  end

  # GET /atendes/1
  # GET /atendes/1.json
  def show
  end

  # GET /atendes/new
  def new
    @atende = Atende.new
  end

  # GET /atendes/1/edit
  def edit
  end

  # POST /atendes
  # POST /atendes.json
  def create
    @atende = Atende.new(atende_params)

    respond_to do |format|
      if @atende.save
        format.html { redirect_to @atende, notice: 'Atende was successfully created.' }
        format.json { render :show, status: :created, location: @atende }
      else
        format.html { render :new }
        format.json { render json: @atende.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendes/1
  # PATCH/PUT /atendes/1.json
  def update
    respond_to do |format|
      if @atende.update(atende_params)
        format.html { redirect_to @atende, notice: 'Atende was successfully updated.' }
        format.json { render :show, status: :ok, location: @atende }
      else
        format.html { render :edit }
        format.json { render json: @atende.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendes/1
  # DELETE /atendes/1.json
  def destroy
    @atende.destroy
    respond_to do |format|
      format.html { redirect_to atendes_url, notice: 'Atende was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atende
      @atende = Atende.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atende_params
      params.require(:atende).permit(:codigomesa, :horarioentrada, :cpf_garcom)
    end
end
