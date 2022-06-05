json.extract! usuario, :id, :name, :team, :info, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
