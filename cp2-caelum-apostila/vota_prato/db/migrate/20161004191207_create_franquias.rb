class CreateFranquias < ActiveRecord::Migration
  def change
    create_table :franquias do |t|

      t.timestamps null: false
    end
  end
end
