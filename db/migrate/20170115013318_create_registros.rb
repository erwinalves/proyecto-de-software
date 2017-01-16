class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.datetime :ingreso
      t.datetime :salida
      t.date :fecha

      t.timestamps null: false
    end
  end
end
