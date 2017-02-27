class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :codigo_producto
      t.integer :stock_actual
      t.integer :stock_minimo
      t.string :nombre_producto
      t.float :precio

      t.timestamps null: false
    end
  end
end
