class CreateCotizacions < ActiveRecord::Migration[5.0]
  def change
    create_table :cotizacions do |t|
      t.string :num_cotizacion
      t.references :proyecto, foreign_key: true
      t.references :cliente, foreign_key: true
      t.references :solicitud, foreign_key: true

      t.timestamps
    end
  end
end
