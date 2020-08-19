class AddColumnsToClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :clientes, :tipo, :integer
    add_column :clientes, :descuento, :float
    add_column :clientes, :banco, :string
    add_column :clientes, :sucursal, :string
    add_column :clientes, :cuenta, :string
    add_column :clientes, :clabe, :string
  end
end
