class CreateArmazenas < ActiveRecord::Migration[5.1]
  def change
    create_table :armazenas do |t|
      t.string :codbarras
      t.string :cnpj
      t.integer :quantidade

      t.timestamps
    end
  end
end
