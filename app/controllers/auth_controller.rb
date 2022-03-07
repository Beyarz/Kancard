class AuthController < ApplicationController
  # @route GET / (root)
  # @route GET /auth/index (auth_index)
  def index
    if user_signed_in?
      redirect_to boards_path
    end
  end
end
