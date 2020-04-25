class SessionsController < ApplicationController
  def new
  end
  def show
  end
  def create
    session[:name]=params[:name]
    redirect_to root_path
  end
  def destroy
    logout
    redirect_to login_path
  end
end
