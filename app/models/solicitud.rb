class Solicitud < ApplicationRecord
  belongs_to :user
  belongs_to :cliente

  validates_presence_of :cliente, :proyecto, :estatus, :nombre_contacto, :telefono_directo

end