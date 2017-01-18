class CambioTablaPersona < ActiveRecord::Migration
  def change
  	remove_column :personas , :hrs_trabajadas
  	add_column :registros , :persona_id , :integer
  end
end
