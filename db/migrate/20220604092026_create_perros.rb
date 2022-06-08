class CreatePerros < ActiveRecord::Migration[7.0]
  def change
    create_table :perros do |t|
      t.string :name
      t.integer :team
      t.text :info

      t.timestamps
    end
    add_index :perros, :team, unique: true
  end
end
