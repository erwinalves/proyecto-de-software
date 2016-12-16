class Boletum < ActiveRecord::Base

	has_one :Persona
	has_one :Carro

end
