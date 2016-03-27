class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
     t.integer :user_id
      t.string :identificacion
      t.string :cargo
     

      t.timestamps null: false
    end
  end
end
