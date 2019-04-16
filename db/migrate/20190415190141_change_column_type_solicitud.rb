class ChangeColumnTypeSolicitud < ActiveRecord::Migration[5.0]
  def change
  	remove_column :solicituds, :tuberia_codigo_evaluacion 
  	remove_column :solicituds, :tuberia_altura 
  	add_column :solicituds, :tuberia_altura_valor, :float
  	add_column :solicituds, :tuberia_codigo_evaluacion, :boolean
  	add_column :solicituds, :tuberia_altura, :boolean 
  end
end
