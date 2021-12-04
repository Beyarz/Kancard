class AuthController < ApplicationController
  def index
    if user_signed_in?
      redirect_to boards_path
    end
  end
end
