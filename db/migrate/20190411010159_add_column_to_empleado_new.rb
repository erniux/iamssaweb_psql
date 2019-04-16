class AddColumnToEmpleadoNew < ActiveRecord::Migration[5.0]
  def change
    add_column :empleados, :ProxExa, :datetime
    add_column :empleados, :Informar, :string
    add_column :empleados, :Parentesco, :string
    add_column :empleados, :TelInformar, :string
    add_column :empleados, :GrupoSanguineo, :string
    add_column :empleados, :AlergiaMedicamento, :string
    add_column :empleados, :EnfCronicas, :string
  end
end
