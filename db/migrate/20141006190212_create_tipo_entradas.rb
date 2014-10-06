class CreateTipoEntradas < ActiveRecord::Migration
  def change
    create_table :tipo_entradas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
