class CreateEventos < ActiveRecord::Migration
  def self.up
    create_table :eventos do |t|
      t.string :nome
      t.string :local
      t.datetime :inicio
      t.datetime :termino

      t.timestamps
    end
  end

  def self.down
    drop_table :eventos
  end
end
