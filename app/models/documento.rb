class Documento < ActiveRecord::Base
	has_one :Persona
	has_one :Carro

	#Validacion Vendedor no null
	validates :tipo_documento , presence: { message: "Nombre no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo numeros
    validates :tipo_documento, format: { with: /\A[0-6]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :cantidad_producto , presence: { message: "Cantidad de productos  no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :cantidad_producto, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :rut_proveedor , presence: { message: "Nombre no debe estar vacio"} , confirmation: true
    #Validacion Vendedor no null
	validates :fecha_emision , presence: { message: "Fecha no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :fecha_emision, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion Vendedor no null
	validates :valor_neto , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :valor_neto, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :valor_exento , presence: { message: "Valor exento no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :valor_exento, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :valor_iva , presence: { message: "Valor iva no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :valor_iva, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :folio , presence: { message: "Folio no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :folio, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }



end
