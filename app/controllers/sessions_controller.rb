class SessionsController < ApplicationController
  before_action :user_id

  private

  def current_user
    return head(:forbidden) unless session.include? :user_id
  end
end
