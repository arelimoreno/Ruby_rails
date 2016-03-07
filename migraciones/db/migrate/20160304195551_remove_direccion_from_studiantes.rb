class RemoveDireccionFromStudiantes < ActiveRecord::Migration
  def change
    remove_column :studiantes, :Direccion, :string
  end
end
