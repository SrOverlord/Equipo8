class CreateTarjeta < ActiveRecord::Migration[7.0]
  def change
    create_table :tarjeta do |t|
      t.string :titular
      t.integer :numero
      t.integer :cvc
      t.string :fechaCaducidad
      t.integer :idCuenta

      t.timestamps
    end
    add_index :tarjeta, :numero, unique: true
    add_index :tarjeta, :idCuenta, unique: true
  end
end
