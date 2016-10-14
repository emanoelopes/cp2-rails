class AddColumnNomeToQualificacoes < ActiveRecord::Migration
  def change
    add_column :qualificacoes, :nome, :string, limit: 40
  end
end
