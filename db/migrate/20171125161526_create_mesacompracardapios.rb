class CreateMesacompracardapios < ActiveRecord::Migration[5.1]
  def change
    create_table :mesacompracardapios do |t|
      t.integer :codcardapio
      t.string :codigomesa
      t.timestamp :horarioentrada
      t.integer :qtd

      t.timestamps
    end
  end
end
