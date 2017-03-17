class EliminarRut < ActiveRecord::Migration
  def change
  	remove_column :invoices, :rut_proveedor
  	remove_column :invoices, :valor_exento
  	remove_column :invoices, :valor_iva
  	remove_column :people, :rut
  end
end
