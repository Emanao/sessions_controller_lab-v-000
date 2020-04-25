class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logout
  def login
    session[:name] ||= []
    session[:name]=params[:name]
  end
  def logout
    session.clear
  end
end
