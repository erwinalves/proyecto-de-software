class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :stock_actual
      t.integer :stock_minimo
      t.string :nombre
      t.integer :cod_producto
      t.float :precio

      t.timestamps null: false
    end
  end
end
