class CreateCompoes < ActiveRecord::Migration[5.1]
  def change
    create_table :compoes do |t|
      t.string :codbarras
      t.integer :codcardapio

      t.timestamps
    end
  end
end
