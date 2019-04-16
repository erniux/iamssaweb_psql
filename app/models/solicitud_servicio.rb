class SolicitudServicio < ApplicationRecord
	belongs_to :solicituds

	after_initialize :set_defaults #ocure en el new

  def set_defaults
    self.torque = true
  end
end
