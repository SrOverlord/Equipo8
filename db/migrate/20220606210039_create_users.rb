class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :dni
      t.integer :telefono
      t.string :contrasena

      t.timestamps
    end
    add_index :users, :dni, unique: true
  end
end
