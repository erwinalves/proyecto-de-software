json.extract! carro, :id, :product_id, :ticket_id, :invoices_id, :cantidad_producto, :created_at, :updated_at
json.url carro_url(carro, format: :json)