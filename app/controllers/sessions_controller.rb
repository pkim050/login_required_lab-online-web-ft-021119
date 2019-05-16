class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.clear unless session[:name].nil? || session[:name].empty?
  end

  private

  def current_user
    session[:name] if session.include? :name
  end
end
