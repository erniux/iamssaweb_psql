class CotizacionDetalle < ApplicationRecord
  belongs_to :cotizacion
  belongs_to :servicio
  belongs_to :tipo_servicio
end
