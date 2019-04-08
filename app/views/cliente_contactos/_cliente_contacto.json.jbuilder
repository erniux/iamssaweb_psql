json.extract! cliente_contacto, :id, :nombre, :appaterno, :apmaterno, :telefono_directo, :correo, :puesto, :departamento, :clientes_id, :created_at, :updated_at
json.url cliente_contacto_url(cliente_contacto, format: :json)
