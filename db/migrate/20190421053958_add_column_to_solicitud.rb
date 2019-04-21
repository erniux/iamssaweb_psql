class AddColumnToSolicitud < ActiveRecord::Migration[5.0]
  def change
    add_column :solicituds, :nombre_contacto, :string
	add_column :solicituds, :telefono_directo, :string
	add_column :solicituds, :correo, :string
	add_column :solicituds, :puesto, :string
	add_column :solicituds, :departamento, :string
  end
end
