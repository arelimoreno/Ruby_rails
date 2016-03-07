class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :nombre
      t.string :apellido
      t.string :identificacion
      t.string :telefono
      t.string :producto
      t.string :descripcion
      t.datetime :fecha
      t.integer :total
      t.integer :cantidad
      t.float :iva
      t.float :valor

      t.timestamps
    end
  end
end
