json.extract! producto, :id, :stock_actual, :stock_minimo, :nombre, :precio, :created_at, :updated_at
json.url producto_url(producto, format: :json)