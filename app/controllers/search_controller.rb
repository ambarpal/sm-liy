class SearchController < ApplicationController
  def index
  	if (params[:s])
  		@mails = Mail.find(:all, :conditions => ['subject LIKE ? AND from=?', "%#{params[:s]}%", "#{params[:uname]}" ])
  	else
  		@mails = Mail.find(:all)
  	end
  end
end
