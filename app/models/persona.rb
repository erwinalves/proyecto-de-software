class Persona < ActiveRecord::Base

	has_many :boletaas
	has_many :documentos
    has_many :registros
	#Validacion Vendedor no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion Vendedor no null
	validates :rol , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :rol, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :rut , presence: { message: "no debe estar vacio"} , confirmation: true
    
    #Validacion Vendedor no null
	validates :telefono , presence: { message: " no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :telefono, format: { with: /\A[0-9]+\z/,
    message: "Solo se aceptan numeros" }
    #Validacion Vendedor no null
	validates :hrs_trabajadas , presence: { message: "Horas trabajadas no debe estar vacio"} , confirmation: true
    #Validacion Vendedor solo letras
    validates :hrs_trabajadas, format: { with: /\A[0-9]+\z/,
    message: "Solo  acepta numeros" }
end
