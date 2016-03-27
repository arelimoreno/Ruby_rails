class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :origen
      t.string :destino
      t.datetime :horario_salida
      t.integer :duracion_aprox

      t.timestamps null: false
    end
  end
end
