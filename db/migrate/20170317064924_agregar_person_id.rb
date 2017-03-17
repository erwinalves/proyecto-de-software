class AgregarPersonId < ActiveRecord::Migration
  def change
  	add_foreign_key :tickets, :people
  end
end
