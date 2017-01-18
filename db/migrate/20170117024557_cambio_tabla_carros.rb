class CambioTablaCarros < ActiveRecord::Migration
  def change
  	remove_column :carros , :boletum_id
  	add_column :carros , :boletaa_id , :integer
  	remove_column :carros , :factura_id
  	add_column :carros , :documento_id , :integer
  end
end
