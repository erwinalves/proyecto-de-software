class AddForeignKeyUserIdInRegistros < ActiveRecord::Migration
  def change
  	remove_column :registros, :user_id
  	add_reference :registros, :user, index: true
  	add_foreign_key :registros, :users
  end
end
