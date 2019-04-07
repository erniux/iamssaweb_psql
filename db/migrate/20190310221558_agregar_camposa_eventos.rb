class AgregarCamposaEventos < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :cancelada, :boolean
    add_column :events, :Cancelacion, :datetime
    add_column :events, :IdEntidad, :integer
    add_column :events, :NoCotizacion, :integer
    add_column :events, :FechaSalida, :datetime
    add_column :events, :FechaRegreso, :datetime
    add_column :events, :IdPersonalAutoriza, :integer
    add_column :events, :IdPersonal, :integer
    add_column :events, :Ubicacion, :string
    add_column :events, :EntregarResultados, :string
    add_column :events, :IdContactoSolicita, :integer
    add_column :events, :IdContactoAtiende, :integer
    add_column :events, :SegLentes, :boolean
    add_column :events, :SegCasco, :boolean
    add_column :events, :SegZapatos, :boolean
    add_column :events, :SegArnes, :boolean
    add_column :events, :SegTaponesAuditivos, :boolean
    add_column :events, :SegIMSS, :boolean
    add_column :events, :Obra, :string
    add_column :events, :IdEntidadDpto, :integer
    add_column :events, :IdCiudad, :integer
    add_column :events, :Unidad, :string
    add_column :events, :NoOTOrigen, :integer
    add_column :events, :IdObra, :integer
    add_column :events, :EntregarBorrador, :boolean
    add_column :events, :EntregarPeliculas, :boolean

  end
end
