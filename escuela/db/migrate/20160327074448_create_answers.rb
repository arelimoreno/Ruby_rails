class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :respuesta
      t.string :nombre
      t.integer :homework_id

      t.timestamps null: false
    end
  end
end
