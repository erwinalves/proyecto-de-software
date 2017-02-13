class AddCamposUser < ActiveRecord::Migration
  def change
  	add_column :users, :nombre, :string
  	add_column :users, :rut, :integer
  	add_column :users, :rol, :integer
  	add_column :users, :telefono, :integer
  end
end
