class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /registries
  # GET /registries.json
  def index
    @registries = Registry.all
  end

  # GET /registries/1
  # GET /registries/1.json
  def show
  end

  # GET /registries/new
  def new
    @registry = Registry.new
  end

  # GET /registries/1/edit
  def edit
  end

  # POST /registries
  # POST /registries.json
  def create
    @registry = Registry.create(registry_params)

    respond_to do |format|
      if @registry.save
        format.html { redirect_to @registry }
        format.json { render :show, status: :created, location: @registry }
      else
        format.html { render :new }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  def mostrar
    persona = params[:camp]
    @registry = Registry.where(people_id: persona) 
  end

  # PATCH/PUT /registries/1
  # PATCH/PUT /registries/1.json
  def update
    respond_to do |format|
      if @registry.update(registry_params)
        format.html { redirect_to @registry}
        format.json { render :show, status: :ok, location: @registry }
      else
        format.html { render :edit }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registries/1
  # DELETE /registries/1.json
  def destroy
    @registry.destroy
    respond_to do |format|
      format.html { redirect_to registries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry
      @registry = Registry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registry_params
      params.require(:registry).permit(:ingreso, :salida)
    end
end
