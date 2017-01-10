class BoletumSerializer < ActiveModel::Serializer
  attributes :id, :id, :vendedor, :valor_total, :tipo_pago, :cantidad_producto
end
