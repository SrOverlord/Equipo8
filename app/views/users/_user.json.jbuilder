json.extract! user, :id, :nombre, :apellidos, :email, :dni, :telefono, :contrasena, :created_at, :updated_at
json.url user_url(user, format: :json)
