class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    #binding.pry
    session.clear unless session[:name].nil?
    redirect_to '/'
  end
end
