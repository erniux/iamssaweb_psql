class CreateCotizacionDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :cotizacion_detalles do |t|
      t.integer :num_partida
      t.references :cotizacion, foreign_key: true
      t.references :servicio, foreign_key: true
      t.references :tipo_servicio, foreign_key: true
      t.integer :cantidad
      t.float :precio
      t.text :observaciones

      t.timestamps
    end
  end
end
