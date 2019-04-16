class AddColumnToEmpleado < ActiveRecord::Migration[5.0]
  def change
    add_column :empleados, :Activo, :boolean
  end
end
