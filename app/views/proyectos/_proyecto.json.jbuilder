json.extract! proyecto, :id, :nombre_proyecto, :empresa, :responsable, :comentarios, :created_at, :updated_at
json.url proyecto_url(proyecto, format: :json)
