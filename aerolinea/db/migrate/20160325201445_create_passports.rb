class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
      t.string :tipo
      t.integer :precio
      t.integer :route_id

      t.timestamps null: false
    end
  end
end
