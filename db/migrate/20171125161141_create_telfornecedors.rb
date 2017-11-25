class CreateTelfornecedors < ActiveRecord::Migration[5.1]
  def change
    create_table :telfornecedors do |t|
      t.string :cnpj
      t.string :telefone

      t.timestamps
    end
  end
end
