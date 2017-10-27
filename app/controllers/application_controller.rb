class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_sanitized_params, if: :devise_controller?

	def configure_sanitized_params
	  devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:name, :email, :password)}
	  devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:name, :email, :password)}

	end
end
