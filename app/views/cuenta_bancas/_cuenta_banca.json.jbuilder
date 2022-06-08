json.extract! cuenta_banca, :id, :user_id, :numeroCuenta, :saldo, :tipo, :comision, :divisa, :created_at, :updated_at
json.url cuenta_banca_url(cuenta_banca, format: :json)
