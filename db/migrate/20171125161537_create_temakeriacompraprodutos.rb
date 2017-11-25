class CreateTemakeriacompraprodutos < ActiveRecord::Migration[5.1]
  def change
    create_table :temakeriacompraprodutos do |t|
      t.string :cnpj_temakeria
      t.string :cnpj_fornecedor
      t.string :codbarras
      t.date :data
      t.float :preco
      t.integer :qtd

      t.timestamps
    end
  end
end
