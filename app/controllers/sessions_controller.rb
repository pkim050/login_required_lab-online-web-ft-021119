class SessionsController < ApplicationController
  def new

  end

  def create
    redirect_to '/login' and return if !current_user
    current_user
  end

  def destroy
    session.clear if current_user
  end

  private

  def current_user
    session[:name] = params[:name] unless params[:name].nil? || params[:name].empty?
end
