class CabmioDeAtributosEntablaCarro < ActiveRecord::Migration
  def change
  	remove_column :carros , :cod_producto
  	add_column :carros, :producto_id, :integer
  end
end
