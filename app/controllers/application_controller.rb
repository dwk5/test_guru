class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    flash[:notice] = "Привет, #{current_user.first_name}"
    if current_user.admin?
      admin_tests_path
    else
      root_path
    end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:first_name, :last_name, :email, :password, :password_confimation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
    end
  end

end
