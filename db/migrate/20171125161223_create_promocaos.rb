class CreatePromocaos < ActiveRecord::Migration[5.1]
  def change
    create_table :promocaos do |t|
      t.integer :codigo
      t.string :descricao
      t.float :desconto

      t.timestamps
    end
  end
end
