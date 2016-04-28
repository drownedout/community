class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:firstname, :lastname, :profile_picture )}
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:firstname, :lastname, :profile_picture )}
		devise_parameter_sanitizer.for(:account_update){ |u| u.permit(:name, :lastname, :profile_picture )}
	end

end
