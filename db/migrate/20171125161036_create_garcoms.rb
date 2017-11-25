class CreateGarcoms < ActiveRecord::Migration[5.1]
  def change
    create_table :garcoms do |t|
      t.string :cpf

      t.timestamps
    end
  end
end
