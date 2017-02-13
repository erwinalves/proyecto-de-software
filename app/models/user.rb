class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validacion nombre no null
  #validates :nombre, presense: { message: "no debe estar vacio"} , confirmation: true
  #validacion nombre solo letras
  validates :nombre, format: { with: ~ /\A[0-9]+\z/, message: "Solo se aceptan letras" }
  #validacion rut no null
  #validates :rut , presence: { message: " no debe estar vacio"} , confirmation: true
  #Validacion rut solo numeros
  #validates :rut, format: { with: /\A[0-9]+\z/,  message: "Solo se aceptan numeros" }  
  #validacion cantidad de numeros de rut
  #validates :rut, length: { in: 1..8, message: "debe tener minimo 8 numeros" }
  #validacion rol no null
  #validates :rol , presence: { message: " no debe estar vacio"} , confirmation: true
  #Validacion rol solo numeros
  #validates :rol, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
  #validacion cantidad de numeros de rut
  #validates :rut, length: { in: 0..1, message: "debe tener minimo 8 numeros" }
  #validacion telefono no null
  #validates :telefono , presence: { message: " no debe estar vacio"} , confirmation: true
  #Validacion telefono solo numeros
  #validates :telefono, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
  has_many :registro
  has_many :boletaa
  has_many :documento
end
