class SessionsController < ApplicationController
  before_action :current_user

  def new

  end

  def create

  end

  def destroy
    session.clear
  end

  private

  def current_user
    return head(:forbidden) unless session.include? :user_id
  end
end
