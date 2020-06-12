class Cotizacion < ApplicationRecord
  belongs_to :proyecto
  belongs_to :cliente
  belongs_to :solicitud
end
