class SessionsController < ApplicationController
  def new

  end

  def create
    redirect_to '/login' if !current_user
  end

  def destroy
    session.clear if current_user
    redirect_to '/login'
  end
end
