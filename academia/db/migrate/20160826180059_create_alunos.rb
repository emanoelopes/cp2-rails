class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.datetime :inicio
      t.datetime :pagamento

      t.timestamps null: false
    end
  end
end
