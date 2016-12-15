class ModificacionNombreColumnasEntablaCarros < ActiveRecord::Migration
  def change
  	remove_column :carros , :cod_boleta
  	remove_column :carros , :cod_factura
  	add_column :carros , :boleta_id, :integer
  	add_column :carros , :factura_id, :integer
  	
  end
end
