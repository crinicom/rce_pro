class CreateTipoRelacions < ActiveRecord::Migration
  def change
    create_table :tipo_relacions do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
