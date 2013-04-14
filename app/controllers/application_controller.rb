class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  private
  def authenticate
    if session[:user_id].present?
      @cu = User.find(session[:user_id])
    else
      @cu = nil
    end
  end
end
