class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.integer :responsable_id
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
