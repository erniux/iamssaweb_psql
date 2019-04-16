class AddColumnsToSolicitud < ActiveRecord::Migration[5.0]
  def change
      add_column :solicituds, :estructura_columna_pr, :boolean
      add_column :solicituds, :estructura_columna_hss_o_cajon, :boolean
      add_column :solicituds, :estructura_columna_ptr_o_monten, :boolean
      add_column :solicituds, :estructura_trabes_pr, :boolean
      add_column :solicituds, :estructura_trabes_ps, :boolean
      add_column :solicituds, :estructura_trabes_angulo_con_ptr, :boolean
      add_column :solicituds, :estructura_angulo_con_angulo, :boolean
      add_column :solicituds, :estructura_ptr_con_ptr, :boolean
      add_column :solicituds, :estructura_union_filete, :boolean
      add_column :solicituds, :estructura_union_a_tope, :boolean
      add_column :solicituds, :estructura_espesor_columna, :float  
      add_column :solicituds, :estructura_espesor_trabe, :float  
      add_column :solicituds, :estructura_tiempo_fabricacion_montaje, :float  
      add_column :solicituds, :estructura_toneladas, :float  
      add_column :solicituds, :servicio_torque, :boolean
      add_column :solicituds, :servicio_vacio, :boolean
      add_column :solicituds, :servicio_iris, :boolean
      add_column :solicituds, :servicio_prueba_doblez, :boolean
      add_column :solicituds, :servicio_prueba_pintura, :boolean
      add_column :solicituds, :servicio_doblez, :boolean
      add_column :solicituds, :servicio_radiografia, :boolean
      add_column :solicituds, :servicio_inspeccion_visual, :boolean
      add_column :solicituds, :servicio_ultrasonido, :boolean
      add_column :solicituds, :servicio_liquido_penetrante, :boolean
      add_column :solicituds, :servicio_part_magneticas, :boolean
      add_column :solicituds, :servicio_supervicion, :boolean
      add_column :solicituds, :servicio_calif_soldador, :boolean
      add_column :solicituds, :servicio_calif_procedimiento, :boolean
      add_column :solicituds, :servicio_elab_procedimiento, :boolean
      add_column :solicituds, :servicio_emision_procedimiento, :boolean
      add_column :solicituds, :tanque_recipiente_a_presion, :boolean
      add_column :solicituds, :tanque_espesor_cuerpo, :float  
      add_column :solicituds, :tanque_espesor_tapa, :float  
      add_column :solicituds, :tanque_espesor_diametro, :float  
      add_column :solicituds, :tanque_espesor_capacidad, :float  
      add_column :solicituds, :tanque_espesor_longitud_altura, :float  
      add_column :solicituds, :tanque_no_sold_circunferencia, :float  
      add_column :solicituds, :tanque_no_sold_longitud, :float  
      add_column :solicituds, :tanque_codigo_evaluacion, :float  
      add_column :solicituds, :tuberia_tanque, :float  
      add_column :solicituds, :tuberia_recipiente_a_presion, :float  
      add_column :solicituds, :tuberia_espesor_cuerpo, :float  
      add_column :solicituds, :tuberia_espesor_tapa, :float  
      add_column :solicituds, :tuberia_espesor_diametro, :float  
      add_column :solicituds, :tuberia_espesor_capacidad , :float  
      add_column :solicituds, :tuberia_espesor_longitud_altura, :float  
      add_column :solicituds, :tuberia_no_sold_circunferencia , :float  
      add_column :solicituds, :tuberia_no_sold_longitud, :float  
      add_column :solicituds, :tuberia_codigo_evaluacion, :string 

  end
end
