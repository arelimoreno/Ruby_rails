class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :codigo
      t.string :nombre
      t.string :modelo
      t.string :aerolinea
      t.integer :capacidad

      t.timestamps null: false
    end
  end
end
