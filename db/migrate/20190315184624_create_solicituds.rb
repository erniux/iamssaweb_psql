class CreateSolicituds < ActiveRecord::Migration[5.0]
  def change
    create_table :solicituds do |t|
      t.integer :id_cliente
      t.integer :id_contacto
      t.datetime :fecha_solicitud
      t.integer :id_persona_elabora
      t.string :status_solicitud

      t.timestamps
    end
  end
end
