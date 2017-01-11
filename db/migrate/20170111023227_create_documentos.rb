class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.integer :tipo_documento
      t.integer :cantidad_producto
      t.string :rut_proveedor
      t.string :fecha_emision
      t.float :valor_neto
      t.float :valor_exento
      t.float :valor_iva
      t.integer :folio

      t.timestamps null: false
    end
  end
end
