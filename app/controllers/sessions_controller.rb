class SessionsController < ApplicationController
  before_action :current_user

  def create

  end

  def destroy

  end

  private

  def current_user
    return head(:forbidden) unless session.include? :user_id
  end
end
