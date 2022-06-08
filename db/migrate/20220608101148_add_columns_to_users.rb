class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellidos, :string
    add_column :users, :dni, :string
    add_index :users, :dni, unique: true
    add_column :users, :telefono, :integer
    add_column :users, :contrasena, :string
  end
end
