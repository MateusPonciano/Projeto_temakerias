class CreateMesas < ActiveRecord::Migration[5.1]
  def change
    create_table :mesas do |t|
      t.string :codigo
      t.timestamp :horarioentrada
      t.timestamp :horariosaida
      t.float :conta

      t.timestamps
    end
  end
end
