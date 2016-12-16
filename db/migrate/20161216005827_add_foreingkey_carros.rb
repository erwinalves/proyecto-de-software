class AddForeingkeyCarros < ActiveRecord::Migration
  def change
  	add_foreign_key  :carros , :facturas, on_delete: :cascade
  	add_foreign_key  :carros , :productos, on_delete: :cascade
  end
end
