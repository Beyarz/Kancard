class SessionsController < ApplicationController
  def new
  end

  def create
    # user = User.find(params[:auth_token])
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
