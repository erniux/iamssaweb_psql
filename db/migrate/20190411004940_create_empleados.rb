class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
      t.integer :NoCredencial
      t.string :Nombre
      t.string :Iniciales
      t.string :Direccion
      t.string :Colonia
      t.string :Poblacion
      t.string :Estado
      t.string :CP
      t.string :Telefono
      t.string :Celular
      t.string :Nextel
      t.string :Radio
      t.datetime :Nacimiento
      t.datetime :Contratacion
      t.string :Puesto
      t.string :Depto
      t.integer :IdEntidad
      t.string :RFC
      t.string :CURP
      t.string :IMSS
      t.string :Licencia
      t.string :Tipo
      t.datetime :Exped
      t.datetime :Venc
      t.string :Licencia2
      t.string :Tipo2
      t.datetime :Exped2
      t.datetime :Venc2
      t.string :RazonSocial
      t.string :Examinador
      t.string :Ocupacion
      t.string :Cedula
      t.string :Registro
      t.string :Agudeza
      t.boolean :Jaeger
      t.boolean :Colores
      t.boolean :Grises
      t.string :UltExa

      t.timestamps
    end
  end
end
