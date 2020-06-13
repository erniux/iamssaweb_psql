class Servicio < ApplicationRecord

	def concepto_truncated
  		concepto.truncate(25)
  	end

end
