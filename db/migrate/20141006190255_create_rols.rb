class CreateRols < ActiveRecord::Migration
  def change
    create_table :rols do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
