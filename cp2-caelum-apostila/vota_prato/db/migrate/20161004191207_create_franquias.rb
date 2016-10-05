class CreateFranquias < ActiveRecord::Migration
  def change
    create_table :franquias do |t|
      t.string :nome, limit: 80
      t.timestamps null: false
      t.integer :restaurante_id
      t.timestamps null: false
    end
  end
end
