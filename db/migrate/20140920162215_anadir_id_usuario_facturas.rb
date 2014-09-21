class AnadirIdUsuarioFacturas < ActiveRecord::Migration
  def change
  	add_column :facturas, :usuario_id, :integer
  	add_index :facturas, :usuario_id

  	remove_column :facturas, :user_id
  end
end
