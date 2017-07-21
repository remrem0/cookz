class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password,
      :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password,
      :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
  end
end
