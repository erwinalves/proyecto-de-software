class Carro < ActiveRecord::Base

belongs_to :boletaa
belongs_to :documento
belongs_to :producto

end
