class CreateRelacions < ActiveRecord::Migration
  def change
    create_table :relacions do |t|
      t.integer :proyectoA_id
      t.integer :proyectoB_id
      t.integer :tipo_relacion_id

      t.timestamps
    end
  end
end
