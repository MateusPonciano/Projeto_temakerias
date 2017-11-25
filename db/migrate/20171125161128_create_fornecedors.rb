class CreateFornecedors < ActiveRecord::Migration[5.1]
  def change
    create_table :fornecedors do |t|
      t.string :cnpj
      t.string :nome

      t.timestamps
    end
  end
end
