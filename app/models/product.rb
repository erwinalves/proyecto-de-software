class Product < ActiveRecord::Base
	has_many :carro

	#Validacion stock_actual no null
	validates :stock_actual , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion stock_actual solo numeros
    validates :stock_actual, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion stock_actual maximo 7 digitos
    validates :stock_actual, length: { maximum: 7 }
    #Validacion stock_actual debe ser mayor que cero
    validates :stock_actual, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion stock_actual debe ser mayor o igual al stock minimo
    validates :stock_actual, :numericality => { :greater_than_or_equal_to => :stock_minimo, message:"Debe ser mayor al stock_minimo"  }
    #Validacion stock_minimo no null
	validates :stock_minimo , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion stock_minimo solo numeros
    validates :stock_minimo, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion stock_minimo debe ser mayor a cero
    validates :stock_minimo, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion nombre no null
    validates :nombre_producto , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre_producto, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    validates :nombre_producto, length: { minimum: 2 }
    validates :nombre_producto, length: { maximum: 50 }
    #Validacion Precio no null
	validates :precio , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion Precio solo numeros
    validates :precio, format: { with: /\A[0-9.]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion precio debe ser mayor a cero
    validates :precio, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion precio debe tener maximo 7 digitos
    validates :precio, length: { maximum: 7 }
end
