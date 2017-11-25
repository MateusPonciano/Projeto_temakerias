class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :codbarras
      t.string :nome
      t.date :data_validade

      t.timestamps
    end
  end
end
