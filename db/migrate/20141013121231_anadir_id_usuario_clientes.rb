class AnadirIdUsuarioClientes < ActiveRecord::Migration
  def change
  	add_column :clientes, :usuario_id, :integer
  	add_index :clientes, :usuario_id
  end
end
