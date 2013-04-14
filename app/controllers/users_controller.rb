class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    @user.is_owner = params[:is_owner]
    @user.save
    binding.pry
    if @user.valid?
      session[:user_id] = @user.id
      authenticate
    end
  end
  def new
    @user = User.new
  end
end
