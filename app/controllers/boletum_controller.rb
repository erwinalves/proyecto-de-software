class BoletumController < ApplicationController
	

	def index
		@boletum=Boletum.all
		
	end
	def new
		@boletum = Boletum.new
	end

	def create
		@boletum = Boletum.new(vendedor: params[:boletum][:vendedor],valor_total:params[:boletum][:vendedor])
		@boletum.save
		redirect_to @boletum
		respond_to do |format|
			if @boletun.save
				format.html{redirect_to @boletum/new, notice: 'Boleta Guardada Con Exito'}
			else
				format.html{render :nuevo}
			end
		end
	end	

	def edit

	end

	def show
		
	end

	def destroy
		@boleta.destroy
        respond_to do |format|
            format.html{ redirect_to Boletum_url, notice: 'Boleta eliminado con Exito.' }
        end
	end

	def update
		respond_to do |format|
            if @boleta.update(boleta_params)
                format.html{redirect_to @boleta, notice: "Boleta fue editado con exito"}
            else
                format.html{render :edit}
            end
        end
	end

	private

    def set_boleta
        @boleta = Boleta.find(params[:id])
    end

    def boleta_params
        params.require(:boleta).permit(:vendedor,:valor_total,:tipo_pago,:cantidad_producto,:lista_producto)
    end
end
