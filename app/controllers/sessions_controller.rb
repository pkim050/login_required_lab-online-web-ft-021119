class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name] if current_user
    redirect_to '/login' if !current_user
  end

  def destroy
    binding.pry
    session.clear unless session[:name].nil?
    redirect_to '/'
  end
end
