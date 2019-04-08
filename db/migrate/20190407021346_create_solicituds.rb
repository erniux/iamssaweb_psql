class CreateSolicituds < ActiveRecord::Migration[5.0]
  def change
    create_table :solicituds do |t|
      t.string :proyecto
      t.string :estatus
      t.text :comentarios
      t.references :user, foreign_key: true
      t.references :cliente, foreign_key: true
      t.references :cliente_contacto, foreign_key: true

      t.timestamps
    end
  end
end
