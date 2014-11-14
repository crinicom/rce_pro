class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.text :comment
      t.string :reference1
      t.string :reference2
      t.string :reference3
      t.string :user
      t.string :mail
      t.integer :status

      t.timestamps
    end
  end
end
