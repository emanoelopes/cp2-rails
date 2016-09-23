class RemoveFotoFileNameFromRestaurantes < ActiveRecord::Migration
  def change
    remove_column :restaurantes, :foto_file_name, :string
  end
end
