class AgregarVendedorId < ActiveRecord::Migration
  def change
  	remove_column :tickets, :vendedor
  end
end
