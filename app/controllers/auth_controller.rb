class AuthController < ApplicationController
  def index
  end

  def login
  end

  def register
  end

  private
  def create
    @user = User.new(
      params[[:user][:name],
      params[:user][:email],
      params[:user][:email_confirmation],
      params[:user][:password],
      params[:user][:password_confirmation],
    ])

    if @user.valid?
      @user.save!
    else
      @user.errors.details
    end
  end
end
