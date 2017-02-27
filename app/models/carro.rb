class Carro < ActiveRecord::Base
  belongs_to :product
  belongs_to :ticket
  belongs_to :invoices
end
