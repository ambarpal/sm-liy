class AdminController < ApplicationController
  def index
	if (session[:user_name] != "admin") then
		redirect_to '/403'
	end
  	@mailsReceived = Mail.all.where(to: session[:user_name])
  	@mailsCount = Mail.all.count
  end
end
