class Invoice < ActiveRecord::Base
	has_one :user
	has_one :carro

    #validacion tipo_documento no null
	validates :tipo_documento, presence: {message: "No debe estar vacio"}, confirmation: true
	#Validacion tipo_documento solo numeros
    validates :tipo_documento, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #validacion tipo_pago entre 1 al 5
    
    #Validacion valor_neto no null
	validates :valor_neto , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion valor_neto solo numeros
    validates :valor_neto, format: { with: /\A[0-9.]+\z/, message: "Solo se aceptan numeros" }
    #Validacion valor_neto debe ser mayor que cero
    validates :valor_neto, :numericality => { :greater_than => 0, message: "debe ser mayor a cero"}
    #Validacion folio no null
	validates :folio , presence: { message: "Folio no debe estar vacio"} , confirmation: true
    #Validacion folio solo numeros
    validates :folio, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion folio maximo 11 digitos
    validates :folio, length: { maximum: 11 }

end
