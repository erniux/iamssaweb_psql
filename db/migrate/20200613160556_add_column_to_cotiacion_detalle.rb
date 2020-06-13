class AddColumnToCotiacionDetalle < ActiveRecord::Migration[5.0]
  def change
    add_column :cotizacion_detalles, :total, :float
  end
end
