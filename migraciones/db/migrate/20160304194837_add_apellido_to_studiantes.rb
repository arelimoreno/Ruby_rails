class AddApellidoToStudiantes < ActiveRecord::Migration
  def change
    add_column :studiantes, :Apellido, :string
  end
end
