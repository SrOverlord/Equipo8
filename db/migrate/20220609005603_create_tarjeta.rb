class CreateTarjeta < ActiveRecord::Migration[7.0]
  def change
    create_table :tarjeta do |t|
      t.string :titular
      t.string :numero
      t.string :cvc
      t.string :fechacaducidad
      t.string :idCuenta
      t.string :idUsuario

      t.timestamps
    end
    add_index :tarjeta, :idCuenta, unique: true
  end
end
