class CotizacionDetalle < ApplicationRecord
  belongs_to :cotizacion
  belongs_to :servicio
  belongs_to :tipo_servicio

  validates_presence_of :num_partida, :cantidad, :precio, :servicio_id

  before_save :calc_total

  def calc_total
  	self.total = self.cantidad * self.precio
  end

   

end

 