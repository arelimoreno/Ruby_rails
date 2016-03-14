class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :nombre
      t.string :seg_nombre
      t.string :apellido
      t.string :seg_apellido
      t.string :registro
      t.integer :edad
      t.datetime :fecha_nacimiento
      t.string :madre
      t.string :padre
      t.string :vacunas
      t.string :cancer
      t.string :deabetes
      t.string :hiper
      t.string :enfermedad
      t.string :grupo_s
      t.string :desnutricion

      t.timestamps null: false
    end
  end
end
