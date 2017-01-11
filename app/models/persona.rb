class Persona < ActiveRecord::Base

	has_many :boletaas
	has_many :documentos

end
