json.extract! solicitud, :id, :proyecto, :estatus, :comentarios, :user_id, :cliente_id, :cliente_contacto_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
