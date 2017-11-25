class CreateTemakeria < ActiveRecord::Migration[5.1]
  def change
    create_table :temakeria do |t|
      t.string :cnpj
      t.string :cpf_adm
      t.string :string
      t.string :nome
      t.float :faturamento
      t.float :despesas
      t.string :numero
      t.string :cep
      t.string :cnpj_matriz

      t.timestamps
    end
  end
end
