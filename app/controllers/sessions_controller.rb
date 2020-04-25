class SessionsController < ApplicationController
  def new
  end
  def show
  end
  def create
    if !params.include?(:name)||params[:name].empty?
      redirect_to login_path
    else
      session[:name]=params[:name]
      redirect_to root_path
    end
  end
  def destroy
    logout
    redirect_to login_path
  end
end
