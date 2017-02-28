class Invoice < ActiveRecord::Base
	has_one :user
	has_one :carro

    #validacion tipo_documento no null
	validates :tipo_documento, presence: {message: "No debe estar vacio"}, confirmation: true
	#Validacion tipo_documento solo numeros
    validates :tipo_documento, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion cantidad_producto no null
	validates :cantidad_producto , presence: { message: "Cantidad de productos  no debe estar vacio"} , confirmation: true
    #Validacion cantidad_producto solo numeros
    validates :cantidad_producto, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion rut_proveedor no null
	validates :rut_proveedor , presence: { message: "Nombre no debe estar vacio"} , confirmation: true
    #validacion cantidad de numeros de rut
    validates :rut_proveedor, length: { in: 1..8, message: "debe tener minimo 8 numeros" }
    #Validacion valor_neto no null
	validates :valor_neto , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion valor_neto solo numeros
    validates :valor_neto, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion valor_exento no null
	validates :valor_exento , presence: { message: "Valor exento no debe estar vacio"} , confirmation: true
    #Validacion valor_exento solo numeros
    validates :valor_exento, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion valor_iva no null
	validates :valor_iva , presence: { message: "Valor iva no debe estar vacio"} , confirmation: true
    #Validacion valor_iva solo numeros
    validates :valor_iva, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion folio no null
	validates :folio , presence: { message: "Folio no debe estar vacio"} , confirmation: true
    #Validacion folio solo numeros
    validates :folio, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }


end
