class CreateSolicitudServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitud_servicios do |t|
      t.references :solicitud, foreign_key: true
      t.boolean :torque
      t.boolean :vacio
      t.boolean :iris
      t.boolean :prueba_doblez
      t.boolean :prueba_pintura
      t.boolean :doblez
      t.boolean :radiografia
      t.boolean :inspeccion_visual
      t.boolean :ultrasonido
      t.boolean :liquido_penetrante
      t.boolean :part_magneticas
      t.boolean :supervicion
      t.boolean :calif_soldador
      t.boolean :calif_procedimiento
      t.boolean :elab_procedimiento
      t.boolean :emision_procedimiento


      t.timestamps
    end
  end
end
