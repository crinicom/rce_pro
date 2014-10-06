class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :email
      t.integer :estado_id
      t.integer :equipo_id
      t.integer :jefe_id

      t.timestamps
    end
  end
end
