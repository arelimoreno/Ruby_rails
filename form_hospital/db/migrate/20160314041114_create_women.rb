class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :nombre
      t.string :seg_nombre
      t.string :apellido
      t.string :seg_apellido
      t.datetime :fecha_nacimiento
      t.string :identidicacion
      t.string :estado_civil
      t.integer :hijo
      t.integer :aborto
      t.string :problema
      t.string :cancer_o
      t.string :cancer_m
      t.string :cancer
      t.string :hiper
      t.string :deabetes
      t.string :alzheimer
      t.string :grupo_s
      t.string :enfermedad

      t.timestamps null: false
    end
  end
end
