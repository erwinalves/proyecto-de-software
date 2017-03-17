class CambiarTipoPagoAInt < ActiveRecord::Migration
  def change
  	remove_column :tickets, :tipo_pago
  	add_column :tickets, :tipo_pago, :integer
  end
end
