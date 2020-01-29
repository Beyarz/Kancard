class AuthController < ApplicationController
  def index
    @project_title = "Kancard".freeze
  end

  def login
    render "login"
  end

  def register
    render "register"
  end
end
