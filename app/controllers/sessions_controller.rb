class SessionsController < ApplicationController
  def new

  end

  def create
    if current_user.nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.clear unless current_user.nil?
    redirect_to '/'
  end
end
