class CreateFechas < ActiveRecord::Migration
  def change
    create_table :fechas do |t|
      t.integer :proyecto_id
      t.datetime :fecha
      t.integer :hito_id

      t.timestamps
    end
  end
end
