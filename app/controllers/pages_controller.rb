class PagesController < ApplicationController
  def home  
  	redirect_to dashboard_url if user_signed_in?
  end

  def dashboard
  	@events = Event.all
  end
end