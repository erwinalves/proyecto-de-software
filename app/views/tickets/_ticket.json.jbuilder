json.extract! ticket, :id, :vendedor, :codigo_boleta, :monto, :cantidad_producto, :tipo_pago, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)