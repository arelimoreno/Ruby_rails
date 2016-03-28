class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :tema
      t.text :pregunta
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
