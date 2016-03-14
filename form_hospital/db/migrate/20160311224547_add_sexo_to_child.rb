class AddSexoToChild < ActiveRecord::Migration
  def change
    add_column :children, :Sexo, :string
  end
end
