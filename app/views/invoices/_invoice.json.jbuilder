json.extract! invoice, :id, :tipo_documento, :cantidad_producto, :rut_proveedor, :valor_neto, :valor_exento, :valor_iva, :folio, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)