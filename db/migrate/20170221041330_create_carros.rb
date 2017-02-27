class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.references :product, index: true, foreign_key: true
      t.references :ticket, index: true, foreign_key: true
      t.references :invoices, index: true, foreign_key: true
      t.integer :cantidad_producto

      t.timestamps null: false
    end
  end
end
