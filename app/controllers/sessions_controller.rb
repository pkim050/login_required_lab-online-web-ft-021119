class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].empty? || params[:name].nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.clear unless session[:name].empty? || session[:name].nil?
  end
end
