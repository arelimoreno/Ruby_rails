class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.integer :number
      t.string :flat
      t.string :owner
      t.integer :identification
      t.references :tower, index: true

      t.timestamps
    end
  end
end
