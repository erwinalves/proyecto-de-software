class Persona < ActiveRecord::Base
	has_many :boletas
	has_many :facturas
end
