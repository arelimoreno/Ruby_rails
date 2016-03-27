class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :pilot_id
      t.integer :route_id

      t.timestamps null: false
    end
  end
end
