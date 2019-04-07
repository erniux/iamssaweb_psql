class CreateSolicitudTuberia < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitud_tuberia do |t|
      t.string :id_solicitud
      t.boolean :piso
      t.float :altura_piso
      t.string :codigo_evaluacion
      t.string :diametro
      t.integer :no_uniones
      t.string :cve_cedula

      t.timestamps
    end
  end
end
