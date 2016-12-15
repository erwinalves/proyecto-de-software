class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.float :monto_factura
      t.integer :cod_factura
      t.integer :cantidad_producto
      t.integer :rut_proveedor

      t.timestamps null: false
    end
  end
end
