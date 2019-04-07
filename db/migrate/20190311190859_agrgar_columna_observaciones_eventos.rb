class AgrgarColumnaObservacionesEventos < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :observaciones, :text
  end
end
