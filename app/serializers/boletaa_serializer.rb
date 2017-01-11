class BoletaaSerializer < ActiveModel::Serializer
  attributes :id, :vendedor, :codigo_boleta, :monto, :cantidad_producto, :tipo_pago
end
