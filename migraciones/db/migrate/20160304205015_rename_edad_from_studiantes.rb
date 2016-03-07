class RenameEdadFromStudiantes < ActiveRecord::Migration
  def change
  	rename_column :Studiantes, :Edad, :Edades 
  end
end
