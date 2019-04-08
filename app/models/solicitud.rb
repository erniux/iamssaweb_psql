class Solicitud < ApplicationRecord
  belongs_to :user
  belongs_to :cliente
  belongs_to :cliente_contacto

  has_many :solicitud_estructura
  has_many :solicitud_servicio
  has_many :solicitud_tanque
  has_many :solicitud_tuberium


  accepts_nested_attributes_for :solicitud_estructura, allow_destroy: true
  accepts_nested_attributes_for :solicitud_servicio, allow_destroy: true
  accepts_nested_attributes_for :solicitud_tanque, allow_destroy: true
  accepts_nested_attributes_for :solicitud_tuberium, allow_destroy: true

end
