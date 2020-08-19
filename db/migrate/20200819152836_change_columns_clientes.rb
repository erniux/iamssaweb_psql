class ChangeColumnsClientes < ActiveRecord::Migration[5.0]
  def change
	remove_column :clientes, :revision_lunes
	remove_column :clientes, :revision_martes
	remove_column :clientes, :revision_miercoles
	remove_column :clientes, :revision_jueves
	remove_column :clientes, :revision_viernes
	remove_column :clientes, :revision_sabado
	remove_column :clientes, :cobro_lunes
	remove_column :clientes, :cobro_martes
	remove_column :clientes, :cobro_miercoles
	remove_column :clientes, :cobro_jueves
	remove_column :clientes, :cobro_viernes
	remove_column :clientes, :cobro_sabado 
	add_column :clientes, :revision_lunes, :integer
	add_column :clientes, :revision_martes, :integer
	add_column :clientes, :revision_miercoles, :integer
	add_column :clientes, :revision_jueves, :integer
	add_column :clientes, :revision_viernes, :integer
	add_column :clientes, :revision_sabado, :integer
	add_column :clientes, :cobro_lunes, :integer
	add_column :clientes, :cobro_martes, :integer
	add_column :clientes, :cobro_miercoles, :integer
	add_column :clientes, :cobro_jueves, :integer
	add_column :clientes, :cobro_viernes, :integer
	add_column :clientes, :cobro_sabado, :integer
  end
end
