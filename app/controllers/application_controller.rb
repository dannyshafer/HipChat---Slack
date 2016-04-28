class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def slack
  	puts "omfg it works"*1000
  end

  def hipchat
  	puts "omfg it works"*1000
  end
end
