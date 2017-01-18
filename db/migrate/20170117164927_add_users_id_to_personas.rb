class AddUsersIdToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :users_id, :integer
  end
end
