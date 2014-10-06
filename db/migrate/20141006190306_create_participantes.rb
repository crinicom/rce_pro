class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.integer :proyecto_id
      t.integer :persona_id
      t.integer :rol_id

      t.timestamps
    end
  end
end
