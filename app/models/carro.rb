class Carro < ActiveRecord::Base
belongs_to :boleta
belongs_to :factura
belongs_to :producto




end
