class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.integer :team
      t.text :info

      t.timestamps
    end
    add_index :usuarios, :team, unique: true
  end
end
