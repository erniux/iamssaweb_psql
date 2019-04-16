class RenameColumnSolicitud < ActiveRecord::Migration[5.0]
  def change
  	rename_column :solicituds, :tuberia_tanque, :tuberia_altura 
    rename_column :solicituds, :tuberia_recipiente_a_presion, :tuberia_uniones_hasta_2_y_medio
    rename_column :solicituds, :tuberia_espesor_cuerpo, :tuberia_uniones_3_a_8
    rename_column :solicituds, :tuberia_espesor_tapa, :tuberia_uniones_10_a_14
    rename_column :solicituds, :tuberia_espesor_diametro, :tuberia_uniones_16_a_20
    rename_column :solicituds, :tuberia_espesor_capacidad, :tuberia_uniones_24_a_26
    rename_column :solicituds, :tuberia_espesor_longitud_altura, :tuberia_uniones_30_a_32
    rename_column :solicituds, :tuberia_no_sold_circunferencia, :tuberia_uniones_34_a_36
    rename_column :solicituds, :tuberia_no_sold_longitud, :tuberia_uniones_38_a_42
    add_column :solicituds, :tuberia_uniones_44_a_48, :float
    add_column :solicituds, :tuberia_cedula_hasta_2_y_medio, :float
    add_column :solicituds, :tuberia_cedula_3_a_8, :float
    add_column :solicituds, :tuberia_cedula_10_a_14, :float
    add_column :solicituds, :tuberia_cedula_16_a_20, :float
    add_column :solicituds, :tuberia_cedula_24_a_26, :float
    add_column :solicituds, :tuberia_cedula_30_a_32, :float
    add_column :solicituds, :tuberia_cedula_34_a_36, :float
    add_column :solicituds, :tuberia_cedula_38_a_42, :float
    add_column :solicituds, :tuberia_cedula_44_a_48, :float
    
  end
end
