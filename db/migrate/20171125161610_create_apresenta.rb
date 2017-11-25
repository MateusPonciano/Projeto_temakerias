class CreateApresenta < ActiveRecord::Migration[5.1]
  def change
    create_table :apresenta do |t|
      t.integer :codcardapio
      t.string :codigomesa
      t.timestamp :horarioentrada
      t.integer :codpromocao

      t.timestamps
    end
  end
end
