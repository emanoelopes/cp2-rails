class CreateFranquia < ActiveRecord::Migration
  def change
    create_table :franquia do |t|
      t.string :nome, limit: 80
      t.timestamps null: false
    end
  end
end
