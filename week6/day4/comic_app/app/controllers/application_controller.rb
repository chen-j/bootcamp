class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :add_name_to_devise, if: :devise_controller?


  def add_name_to_devise
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
  end

end
