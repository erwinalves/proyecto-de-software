class CarrosController < ApplicationController

	def index
		@carros=Carro.all
		
	end
end
