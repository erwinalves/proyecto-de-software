class Ticket < ActiveRecord::Base
	has_one :user
	has_one :carro

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
	#Validacion tipo de pago no null
    validates :tipo_pago , presence: { message: "El tipo de pago no debe estar vacio"} , confirmation: true
    #Validacion tipo de pago solo letras
    validates :tipo_pago , format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros"  }
    #validacion tipo_pago entre 1 al 4
    validates :tipo_pago, format: { with: /\A[1234]+\z/, message: "Solo se aceptan numero del 1 al 4" }
    validates :tipo_pago, length: { in: 1..1, message: "Solo deben ser unidades" }

end
