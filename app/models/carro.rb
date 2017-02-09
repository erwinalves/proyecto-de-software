class Carro < ActiveRecord::Base

belongs_to :boletaas
belongs_to :documentos
belongs_to :productos

end
