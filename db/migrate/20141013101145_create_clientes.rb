class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nif
      t.string :nombre
      t.string :apellidos
      t.string :nombre_comercial
      t.string :telefono
      t.string :telf_movil
      t.string :fax
      t.string :email
      t.string :web
      t.text :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end
