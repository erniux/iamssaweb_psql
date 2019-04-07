module IamssaCopyright
	extend ActiveSupport::Concern

	included do
		before_action :set_copyright
	end

	def set_copyright
	@copyright = IamssaCR::Renderer.copyright 'Iamssa','Todos los derechos reservados'
  end

  module IamssaCR
	class Renderer
		def self.copyright name, msg
			"&copy; #{Time.now.year} | #{name} | #{msg}".html_safe
		end
	end
end

end
