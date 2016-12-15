class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.integer :cod_factura
      t.integer :cod_producto
      t.integer :cod_boleta
      t.integer :cant_prod

      t.timestamps null: false
    end
  end
end
