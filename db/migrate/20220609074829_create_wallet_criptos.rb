class CreateWalletCriptos < ActiveRecord::Migration[7.0]
  def change
    create_table :wallet_criptos do |t|
      t.string :nombre
      t.string :valor

      t.timestamps
    end
  end
end
