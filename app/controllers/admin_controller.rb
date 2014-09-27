class AdminController < ApplicationController
  def index
  	@mailsReceived = Mail.all.where(to: session[:user_name])
  	@mailsCount = Mail.all.count
  end
end
