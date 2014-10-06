class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.integer :proyecto_id
      t.datetime :fecha_creacion
      t.integer :persona_id
      t.integer :tipo_entrada_id
      t.text :comentario
      t.integer :tiempo

      t.timestamps
    end
  end
end
