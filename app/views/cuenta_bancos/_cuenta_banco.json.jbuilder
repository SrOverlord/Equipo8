json.extract! cuenta_banco, :id, :user_id, :numeroCuenta, :saldo, :tipo, :comision, :divisa, :created_at, :updated_at
json.url cuenta_banco_url(cuenta_banco, format: :json)
