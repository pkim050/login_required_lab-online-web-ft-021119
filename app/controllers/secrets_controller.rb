class SecretsController < ApplicationController
  before_action :require_login

  def show
    redirect_to controller: 'sessions', action: 'new'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
