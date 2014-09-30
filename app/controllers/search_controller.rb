class SearchController < ApplicationController
	mails.clear
  def index
  	if params[:s]
  		@mails = Mail.find(:all, :conditions => ['subject LIKE ?', "%#{params[:s]}%"])
  	else
  		@mails = Mail.find(:all)
  	end
  end
end
