class CambiarLlaveForaneaTablaBoletum < ActiveRecord::Migration
  def change
	remove_column :carros , :boleta_id
	add_column :carros , :boletum_id, :integer
  	add_foreign_key  :carros , :boleta, on_delete: :cascade


  end
end
