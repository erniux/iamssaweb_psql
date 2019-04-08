class CreateSolicitudTanques < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitud_tanques do |t|
      t.references :solicitud, foreign_key: true
      t.boolean :tanque
      t.boolean :recipiente_a_presion
      t.float :espesor_cuerpo
      t.float :espesor_tapa
      t.float :espesor_diametro
      t.float :espesor_capacidad
      t.float :espesor_longitud_altura
      t.float :no_sold_circunferencia
      t.float :no_sold_longitud
      t.float :codigo_evaluacion

      t.timestamps
    end
  end
end
