class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.integer :rol
      t.integer :rut
      t.integer :telefono
      t.float :hrs_trabajadas

      t.timestamps null: false
    end
  end
end
