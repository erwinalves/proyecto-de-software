class Factura < ActiveRecord::Base
	has_one :Carro
	has_one :Persona
end
