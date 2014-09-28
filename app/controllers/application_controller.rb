class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 protected
 def authorize
 	unless User1.find_by(id: session[:user_id])
 		redirect_to login_url, alert: "You thought you could gain unauthorised access? LOL"
 	end
 end
end
