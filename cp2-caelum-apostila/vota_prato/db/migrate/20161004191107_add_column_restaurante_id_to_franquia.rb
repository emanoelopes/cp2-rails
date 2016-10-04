class AddColumnRestauranteIdToFranquia < ActiveRecord::Migration
  def change
    add_column :franquias, :restaurante_id, :integer
  end
end
