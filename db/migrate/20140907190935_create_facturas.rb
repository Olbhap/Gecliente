class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.date :fecha_alta
      t.string :serie_factura
      t.integer :numero_factura
      t.text :comentario

      ##Asociaciones
      t.belongs_to :usuario

      t.timestamps
    end
  end
end
