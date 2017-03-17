class Carro < ActiveRecord::Base
  belongs_to :product
  belongs_to :ticket
  belongs_to :invoices
  validates :ticket_id, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
  validates :product_id, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
  validates :cantidad_producto, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    validates :ticket_id, presence: {message: "No debe estar vacio"}, confirmation: true
	validates :product_id, presence: {message: "No debe estar vacio"}, confirmation: true
	validates :cantidad_producto, presence: {message: "No debe estar vacio"}, confirmation: true
end
