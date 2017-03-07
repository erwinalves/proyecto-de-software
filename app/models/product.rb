class Product < ActiveRecord::Base
	has_many :carro

	#Validacion stock_actual no null
	validates :stock_actual , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion stock_actual solo numeros
    validates :stock_actual, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion stock_minimo no null
	validates :stock_minimo , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion stock_minimo solo numeros
    validates :stock_minimo, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacio nombre no null
    validates :nombre_producto , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre_producto, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion Precio no null
	validates :precio , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion Precio solo numeros
    validates :precio, format: { with: /\A[0-9.]+\z/,
    message: "Solo se aceptan numeros" }
end
