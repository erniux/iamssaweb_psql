class Cotizacion < ApplicationRecord
  belongs_to :proyecto
  belongs_to :cliente
  belongs_to :solicitud

  has_many :cotizacion_detalles, dependent: :destroy

  accepts_nested_attributes_for :cotizacion_detalles, reject_if: :all_blank, allow_destroy: true
  
  validates :cotizacion_detalles, :length => { :minimum => 1 }

   

end
