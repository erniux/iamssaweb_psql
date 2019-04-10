class Solicitud < ApplicationRecord
  belongs_to :user
  belongs_to :cliente
  belongs_to :cliente_contacto

  has_many :solicitud_tuberium, dependent: :destroy
  has_many :solicitud_estructura, dependent: :destroy
  has_many :solicitud_servicio, dependent: :destroy
  has_many :solicitud_tanque, dependent: :destroy
  
  accepts_nested_attributes_for :solicitud_tuberium, :solicitud_estructura, :solicitud_servicio, :solicitud_tanque
  
  validates_presence_of :user, :cliente, :cliente_contacto, :proyecto, :estatus
end