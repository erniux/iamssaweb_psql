json.extract! solicitud_tanque, :id, :id_solicitud, :tanque, :recipiente_a_presion, :espesor_cuerpo, :espesor_tapa, :espesor_diametro, :espesor_capacidad, :espesor_longitud_altura, :no_sold_circunferencia, :no_sold_longitud, :codigo_evaluacion, :created_at, :updated_at
json.url solicitud_tanque_url(solicitud_tanque, format: :json)
