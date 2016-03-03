class PagesController < ApplicationController
  def home  
  	redirect_to dashboard_url if user_signed_in?
  end

  def dashboard
  	redirect_to root_url unless user_signed_in?
  	@events = Event.all
  end
end