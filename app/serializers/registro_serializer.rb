class RegistroSerializer < ActiveModel::Serializer
  attributes :id, :ingreso, :salida, :fecha
end
