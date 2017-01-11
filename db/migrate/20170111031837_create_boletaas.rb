class CreateBoletaas < ActiveRecord::Migration
  def change
    create_table :boletaas do |t|
      t.string :vendedor
      t.integer :codigo_boleta
      t.float :monto
      t.integer :cantidad_producto
      t.string :tipo_pago

      t.timestamps null: false
    end
  end
end
