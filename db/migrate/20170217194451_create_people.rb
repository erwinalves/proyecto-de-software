class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.references :user, index: true, foreign_key: true
      t.string :nombre
      t.integer :rol
      t.integer :rut
      t.integer :telefono

      t.timestamps null: false
    end
  end
end
