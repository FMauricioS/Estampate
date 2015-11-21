class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :name, :last_name, :nickname, :address, :telephone, :personal_telephone)
    end

    devise_parameter_sanitizer.for(:edit) do |e|
      e.permit(:email, :password, :password_confirmation, :current_password, :name, :last_name, :nickname, :address, :telephone, :personal_telephone)
    end
  end
end
