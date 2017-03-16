class Person < ActiveRecord::Base
  belongs_to :user
  has_many :registry
  

  	
    #Validacion nombre no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }
    #Validacion rol no null
	validates :rol , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion rol solo numeros
    validates :rol, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion rut no null
	validates :rut , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion rut solo numeros
    validates :rut, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion rut 8 digitos
    validates :rut, length: { in: 1..8, message: "debe tener minimo 8 numeros" }
    #Validacion telefono no null
	validates :telefono , presence: { message: "Valor neto no debe estar vacio"} , confirmation: true
    #Validacion telefono solo numeros
    validates :telefono, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion telefono maximo 11 digitos
    validates :telefono, length: { maximum: 11 }



    
end
