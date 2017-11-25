class CreateFuncionarios < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionarios do |t|
      t.string :cpf
      t.string :cnpj_t
      t.string :nome
      t.date :datanasc
      t.date :dataadmissao
      t.float :salario

      t.timestamps
    end
  end
end
