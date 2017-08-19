class CreateMulhers < ActiveRecord::Migration[5.1]
  def change
    create_table :mulhers do |t|
      t.string :nome
      t.string :formacao
      t.text :temas
      t.string :email
      t.string :cidade

      t.timestamps
    end
  end
end
