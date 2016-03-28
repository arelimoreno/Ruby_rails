class AddFotoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :foto, :string
  end
end
