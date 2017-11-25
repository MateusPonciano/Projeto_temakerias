class CreateGarcomdiastrabalhos < ActiveRecord::Migration[5.1]
  def change
    create_table :garcomdiastrabalhos do |t|
      t.string :cpf
      t.string :diastrabalho

      t.timestamps
    end
  end
end
