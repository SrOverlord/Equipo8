class CreateCuentaBancos < ActiveRecord::Migration[7.0]
  def change
    create_table :cuenta_bancos do |t|
      t.belongs_to :users, null: false, foreign_key: true
      t.string :numeroCuenta
      t.float :saldo
      t.string :tipo
      t.float :comision
      t.string :divisa

      t.timestamps
    end
    add_index :cuenta_bancos, :numeroCuenta, unique: true
  end
end
