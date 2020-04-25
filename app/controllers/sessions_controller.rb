class SessionsController < ApplicationController
  def new

  end
  def show
  end
  def create
    byebug
    if params[:name].nil? || params[:name].strip.empty?
      redirect_to root_path
    else
      session[:name]=params[:name]
      redirect_to login_path
    end
  end
  def destroy
    logout
    redirect_to login_path
  end
end
