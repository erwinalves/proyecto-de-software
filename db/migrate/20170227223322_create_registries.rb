class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.references :people, index: true, foreign_key: true
      t.datetime :ingreso
      t.datetime :salida

      t.timestamps null: false
    end
  end
end
