class Ticket < ActiveRecord::Base
	has_one :user
	has_one :carro

	#Validacion Vendedor no null
	validates :vendedor , presence: { message: "Nombre de vendedor no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :vendedor, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
	#Validacion codigo boleta no null
    validates :codigo_boleta , presence: { message: "El codigo de boleta no debe estar vacio"} , confirmation: true
	#Validacion Monto no null
    validates :codigo_boleta, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    validates :monto , presence: { message: "Monto no debe estar vacio"} , confirmation: true
    #Validacion monto solo numeros
    validates :monto, format: { with: /\A[0-9.]+\z/,
    message: "Solo se aceptan numeros" }
	#Validacion cantidad de productos no null
    validates :cantidad_producto , presence: { message: "La cantidad no debe ser vacia"} , confirmation: true
    #Validacion cantidad de productos solo numeros
    validates :cantidad_producto , format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
	#Validacion tipo de pago no null
    validates :tipo_pago , presence: { message: "El tipo de pago no debe estar vacio"} , confirmation: true
    #Validacion tipo de pago solo letras
    validates :tipo_pago , format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras"  }

end
