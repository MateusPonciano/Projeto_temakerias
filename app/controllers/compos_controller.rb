class ComposController < ApplicationController
  before_action :set_compo, only: [:show, :edit, :update, :destroy]

  # GET /compos
  # GET /compos.json
  def index
    @compos = Compo.all
  end

  # GET /compos/1
  # GET /compos/1.json
  def show
  end

  # GET /compos/new
  def new
    @compo = Compo.new
  end

  # GET /compos/1/edit
  def edit
  end

  # POST /compos
  # POST /compos.json
  def create
    @compo = Compo.new(compo_params)

    respond_to do |format|
      if @compo.save
        format.html { redirect_to @compo, notice: 'Compo was successfully created.' }
        format.json { render :show, status: :created, location: @compo }
      else
        format.html { render :new }
        format.json { render json: @compo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compos/1
  # PATCH/PUT /compos/1.json
  def update
    respond_to do |format|
      if @compo.update(compo_params)
        format.html { redirect_to @compo, notice: 'Compo was successfully updated.' }
        format.json { render :show, status: :ok, location: @compo }
      else
        format.html { render :edit }
        format.json { render json: @compo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compos/1
  # DELETE /compos/1.json
  def destroy
    @compo.destroy
    respond_to do |format|
      format.html { redirect_to compos_url, notice: 'Compo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compo
      @compo = Compo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compo_params
      params.require(:compo).permit(:codbarras, :codcardapio)
    end
end
