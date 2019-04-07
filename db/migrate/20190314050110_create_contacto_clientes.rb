class CreateContactoClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :contacto_clientes do |t|
      t.string :nombre
      t.string :telefono
      t.string :correo
      t.string :departamento
      t.string :cargo

      t.timestamps
    end
  end
end
