class CreateTelfuncionarios < ActiveRecord::Migration[5.1]
  def change
    create_table :telfuncionarios do |t|
      t.string :cpf
      t.string :telefone

      t.timestamps
    end
  end
end
