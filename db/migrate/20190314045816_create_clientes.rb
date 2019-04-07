class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nombre_fiscal
      t.string :nombre_comercial
      t.string :string
      t.string :rfc
      t.string :calle_numero
      t.string :colonia
      t.string :poblacion
      t.string :estado
      t.string :codigo_postal
      t.string :telefono_oficina
      t.string :telefono_celular
      t.string :telefono_directo
      t.string :correo
      t.string :medio_contacto
      t.string :precio
      t.float :presupuesto
      t.float :credito
      t.boolean :revision_lunes
      t.boolean :revision_martes
      t.boolean :revision_miercoles
      t.boolean :revision_jueves
      t.boolean :revision_viernes
      t.boolean :revision_sabado
      t.boolean :cobro_lunes
      t.boolean :cobro_martes
      t.boolean :cobro_miercoles
      t.boolean :cobro_jueves
      t.boolean :cobro_viernes
      t.boolean :cobro_sabado
      t.timestamps
    end
  end
end
