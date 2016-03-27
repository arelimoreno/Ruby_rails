class AddNombreToPilots < ActiveRecord::Migration
  def change
    add_column :pilots, :nombre, :string
  end
end
