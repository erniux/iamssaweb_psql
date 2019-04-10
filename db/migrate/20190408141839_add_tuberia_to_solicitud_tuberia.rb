class AddTuberiaToSolicitudTuberia < ActiveRecord::Migration[5.0]
  def change
    add_column :solicitud_tuberia, :tuberia, :boolean
  end
end
