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

	def show
		
	end

	def delete
		
	end

	def update
		
	end
end
