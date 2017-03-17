class EliminarCantidadDeProductoDeTicket < ActiveRecord::Migration
  def change
  	remove_column :tickets, :cantidad_producto
  end
end
