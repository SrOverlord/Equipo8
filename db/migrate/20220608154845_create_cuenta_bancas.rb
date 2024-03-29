class CreateCuentaBancas < ActiveRecord::Migration[7.0]
  def change
    create_table :cuenta_bancas do |t|
      t.integer :user_id
      t.string :numeroCuenta
      t.string :saldo
      t.string :tipo
      t.string :comision
      t.string :divisa

      t.timestamps
    end
    add_index :cuenta_bancas, :numeroCuenta, unique: true
  end
end
