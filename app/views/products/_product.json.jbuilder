json.extract! product, :id, :codigo_producto, :stock_actual, :stock_minimo, :nombre_producto, :precio, :created_at, :updated_at
json.url product_url(product, format: :json)