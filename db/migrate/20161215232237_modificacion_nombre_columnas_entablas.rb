class ModificacionNombreColumnasEntablas < ActiveRecord::Migration
  def change
  	remove_column :boleta , :cod_boleta
  	remove_column :facturas , :cod_factura

  end
end
