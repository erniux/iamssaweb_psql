class ChangeClientesColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :clientes, :precio
  	add_column :clientes, :precio, :string
  end
end
