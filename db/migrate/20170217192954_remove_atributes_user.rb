class RemoveAtributesUser < ActiveRecord::Migration
  def change
  	remove_column :users , :nombre
  	remove_column :users , :rut
  	remove_column :users , :rol
  	remove_column :users , :telefono
  end
end
