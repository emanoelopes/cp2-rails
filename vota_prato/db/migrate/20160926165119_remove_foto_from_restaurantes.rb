class RemoveFotoFromRestaurantes < ActiveRecord::Migration
  def change
  		remove_column :restaurantes, :foto_updated_at
  end
end
