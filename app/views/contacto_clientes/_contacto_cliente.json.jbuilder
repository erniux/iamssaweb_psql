json.extract! contacto_cliente, :id, :nombre, :telefono, :correo, :departamento, :cargo, :created_at, :updated_at
json.url contacto_cliente_url(contacto_cliente, format: :json)
