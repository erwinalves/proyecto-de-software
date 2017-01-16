json.extract! registro, :id, :ingreso, :salida, :fecha, :created_at, :updated_at
json.url registro_url(registro, format: :json)