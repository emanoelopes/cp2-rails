class AddColumnRestauranteIdToFranquia < ActiveRecord::Migration
  def change
    add_column :franquia, :restaurante_id, :integer
  end
end
