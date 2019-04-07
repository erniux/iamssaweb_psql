module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :parametros_permitidos, if: :devise_controller?
  end

  def parametros_permitidos
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
