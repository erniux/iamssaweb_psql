class Solicitud < ApplicationRecord
  belongs_to :user
  belongs_to :cliente
  belongs_to :cliente_contacto


  after_initialize :set_defaults 

  def set_defaults
    self.estatus = 'Emitida'
  end

  validates_presence_of :cliente, :cliente_contacto, :proyecto, :estatus

end