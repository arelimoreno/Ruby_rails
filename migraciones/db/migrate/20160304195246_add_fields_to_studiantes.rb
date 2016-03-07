class AddFieldsToStudiantes < ActiveRecord::Migration
  def change
    add_column :studiantes, :Edad, :string
    add_column :studiantes, :Direccion, :string
    add_column :studiantes, :Numero_materias, :integer
  end
end
