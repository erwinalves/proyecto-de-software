
class WelcomeController < ApplicationController
	before_action :set_welcome, only: [:show, :edit, :update, :destroy]
    def index
    	
    end

    def show
    end

    
    def new
        @welcome = Welcome.new
    end

  
    def edit
    end

  
    def create
      @welcome = Welcome.new(welcome_params)

      respond_to do |format|
        if @welcome.save
          format.html { redirect_to @welcome, notice: 'ha ingresado con exito.' } 
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @welcome.update(welcome_params)
          format.html { redirect_to @welcome, notice: 'has editado con exito.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @welcome.destroy
      respond_to do |format|
        format.html { redirect_to welcome_url, notice: 'welcome fue destruido.' }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_welcome
        @welcome = Welcome.find(params[:id])
      end

    # Never trust parameters from the scary internet, only allow the white list through.
      def welcome_params
        params.require(:welcome).permit()
      end
end
