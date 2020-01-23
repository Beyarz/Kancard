class AuthController < ApplicationController
  def index
  end

  def login
    render :login
  end

  def register
    render :register
  end
end
