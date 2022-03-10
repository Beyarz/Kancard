# frozen_string_literal: true

class AuthController < ApplicationController
  # @route GET / (root)
  # @route GET /auth/index (auth_index)
  def index
    redirect_to boards_path if user_signed_in?
  end
end
