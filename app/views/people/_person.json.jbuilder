json.extract! person, :id, :user_id, :nombre, :rol, :rut, :telefono, :created_at, :updated_at
json.url person_url(person, format: :json)