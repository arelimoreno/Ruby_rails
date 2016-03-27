class AddApellidoToPilots < ActiveRecord::Migration
  def change
    add_column :pilots, :apellido, :string
  end
end
