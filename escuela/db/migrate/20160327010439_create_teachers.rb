class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.integer :edad
      t.string :perfil

      t.timestamps null: false
    end
  end
end
