class BoletaasController < ApplicationController
  before_action :set_boletaa, only: [:show, :edit, :update, :destroy]

  # GET /boletaas
  # GET /boletaas.json
  def index
    @boletaas = Boletaa.all
  end

  # GET /boletaas/1
  # GET /boletaas/1.json
  def show
  end

  # GET /boletaas/new
  def new
    @boletaa = Boletaa.new
  end

  # GET /boletaas/1/edit
  def edit
  end

  # POST /boletaas
  # POST /boletaas.json
  def create
    @boletaa = Boletaa.new(boletaa_params)

    respond_to do |format|
      if @boletaa.save
        format.html { redirect_to @boletaa, notice: 'Boleta fue creada con exito.' }
        format.json { render :show, status: :created, location: @boletaa }
      else
        format.html { render :new }
        format.json { render json: @boletaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletaas/1
  # PATCH/PUT /boletaas/1.json
  def update
    respond_to do |format|
      if @boletaa.update(boletaa_params)
        format.html { redirect_to @boletaa, notice: 'Boleta fue editada con exito.' }
        format.json { render :show, status: :ok, location: @boletaa }
      else
        format.html { render :edit }
        format.json { render json: @boletaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletaas/1
  # DELETE /boletaas/1.json
  def destroy
    @boletaa.destroy
    respond_to do |format|
      format.html { redirect_to boletaas_url, notice: 'Boleta fue eliminada con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boletaa
      @boletaa = Boletaa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boletaa_params
      params.require(:boletaa).permit(:vendedor, :codigo_boleta, :monto, :cantidad_producto, :tipo_pago)
    end
end
