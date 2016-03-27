class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.integer :edad

      t.timestamps null: false
    end
  end
end
