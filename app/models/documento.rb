class Documento < ActiveRecord::Base
	has_one :Persona
	has_one :Carro
end
