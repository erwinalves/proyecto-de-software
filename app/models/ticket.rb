class Ticket < ActiveRecord::Base
	has_one :user
	has_one :carro

	#Validacion Vendedor no null
	validates :vendedor , presence: { message: "Nombre de vendedor no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :vendedor, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :vendedor, length: { minimum: 2 }
    validates :vendedor, length: { maximum: 50 }
	#Validacion codigo boleta no null
    validates :codigo_boleta , presence: { message: "El codigo de boleta no debe estar vacio"} , confirmation: true
	#Validacion Monto no null
    validates :codigo_boleta, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    validates :monto , presence: { message: "Monto no debe estar vacio"} , confirmation: true
    #Validacion monto solo numeros
    validates :monto, format: { with: /\A[0-9.]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion monto debe ser mayor que cero
    validates :monto, :numericality => { :greater_than => 0, message:"Debe ser mayor a 0"  }
	#Validacion cantidad de productos no null
    validates :cantidad_producto , presence: { message: "La cantidad no debe ser vacia"} , confirmation: true
    #Validacion cantidad de productos solo numeros
    validates :cantidad_producto , format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion cantidad_producto debe ser mayor o igual a 1
    validates :cantidad_producto, :numericality => { :greater_than_or_equal_to => 1, message:"Debe ser mayor a 1"  }
	#Validacion tipo de pago no null
    validates :tipo_pago , presence: { message: "El tipo de pago no debe estar vacio"} , confirmation: true
    #Validacion tipo de pago solo letras
    validates :tipo_pago , format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras"  }
    #Validacion tamaño del nombre
    validates :tipo_pago, length: { minimum: 2 }
    validates :tipo_pago, length: { maximum: 50 }

end
