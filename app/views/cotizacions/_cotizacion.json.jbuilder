json.extract! cotizacion, :id, :num_cotizacion, :proyecto_id, :cliente_id, :solicitud_id, :created_at, :updated_at
json.url cotizacion_url(cotizacion, format: :json)
