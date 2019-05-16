class SessionsController < ApplicationController
  def new

  end

  def create
    redirect_to '/login' if !current_user
  end

  def destroy
    session.clear if curent_user
  end

  private

  def current_user
    session[:name] if session.include? :name
  end
end
