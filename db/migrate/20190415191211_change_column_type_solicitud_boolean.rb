class ChangeColumnTypeSolicitudBoolean < ActiveRecord::Migration[5.0]
  def change
  	remove_column :solicituds, :tuberia_codigo_evaluacion
  	add_column :solicituds, :tuberia_codigo_evaluacion, :string
  end
end
