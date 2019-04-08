class CreateSolicitudEstructuras < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitud_estructuras do |t|
      t.references :solicitud, foreign_key: true
      t.boolean :estructura
      t.boolean :columna_pr
      t.boolean :columna_hss_o_cajon
      t.boolean :columna_ptr_o_monten
      t.boolean :trabes_pr
      t.boolean :trabes_ps
      t.boolean :trabes_angulo_con_ptr
      t.boolean :angulo_con_angulo
      t.boolean :ptr_con_ptr
      t.boolean :union_filete
      t.boolean :union_a_tope
      t.float :espesor_columna
      t.float :espesor_trabe
      t.float :tiempo_fabricacion_montaje
      t.float :toneladas

      t.timestamps
    end
  end
end
