class DocumentoSerializer < ActiveModel::Serializer
  attributes :id, :tipo_documento, :cantidad_producto, :rut_proveedor, :fecha_emision, :valor_neto, :valor_exento, :valor_iva, :folio
end
