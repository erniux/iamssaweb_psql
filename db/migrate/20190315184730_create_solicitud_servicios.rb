class CreateSolicitudServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitud_servicios do |t|
      t.string :id_servicio
      t.string :id_solicitud

      t.timestamps
    end
  end
end
