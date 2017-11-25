class CreateAtendes < ActiveRecord::Migration[5.1]
  def change
    create_table :atendes do |t|
      t.string :codigomesa
      t.timestamp :horarioentrada
      t.string :cpf_garcom

      t.timestamps
    end
  end
end
