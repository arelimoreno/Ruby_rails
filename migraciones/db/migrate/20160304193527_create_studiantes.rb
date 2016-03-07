class CreateStudiantes < ActiveRecord::Migration
  def change
    create_table :studiantes do |t|
      t.string :nombre
      t.string :numero
      t.string :telefono

      t.timestamps null: false
    end
  end
end
