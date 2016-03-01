class PagesController < ApplicationController
  def home  
  	redirect_to restaurants_url if user_signed_in?
  end
end