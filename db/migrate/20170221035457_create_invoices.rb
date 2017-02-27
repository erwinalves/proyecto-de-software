class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :tipo_documento
      t.integer :cantidad_producto
      t.string :rut_proveedor
      t.float :valor_neto
      t.float :valor_exento
      t.float :valor_iva
      t.integer :folio

      t.timestamps null: false
    end
  end
end
