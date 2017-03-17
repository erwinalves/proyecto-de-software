class EliminarCantidadDeProducto < ActiveRecord::Migration
  def change
  	remove_column :invoices, :cantidad_producto
  end
end
