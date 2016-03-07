class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :ident
      t.references :home, index: true

      t.timestamps
    end
  end
end
