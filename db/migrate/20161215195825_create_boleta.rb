class CreateBoleta < ActiveRecord::Migration
  def change
    create_table :boleta do |t|
      t.integer :cod_boleta
      t.string :vendedor
      t.integer :valor_total
      t.string :tipo_pago
      t.integer :cantidad_producto
      t.string :lista_productos

      t.timestamps null: false
    end
  end
end
