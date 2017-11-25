class CreateDependes < ActiveRecord::Migration[5.1]
  def change
    create_table :dependes do |t|
      t.string :cpf_func
      t.string :nome
      t.string :relacao
      t.date :datanasc
      t.string :sexo

      t.timestamps
    end
  end
end
