class ChangeReferencesClienteContacto < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :cliente_contactos, :clientes
  	add_reference :cliente_contactos, :cliente, foreign_key: true
  end
end
