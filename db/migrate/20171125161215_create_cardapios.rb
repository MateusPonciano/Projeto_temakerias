class CreateCardapios < ActiveRecord::Migration[5.1]
  def change
    create_table :cardapios do |t|
      t.integer :codigo
      t.string :nome
      t.float :preco
      t.string :categoria

      t.timestamps
    end
  end
end
