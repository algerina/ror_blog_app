class ApplicationController < ActionController::Base
  # def current_user
  #   User.first
  # end

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :bio, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :surname, :email, :password, :current_password)
    end
  end

  # before_action :authenticate_user!

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end

  # def update_allowed_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) do |u|
  #   u.permit(:name, :bio, :email, :password, :password_confirmation)
  # end
end
